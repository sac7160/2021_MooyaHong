
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notice_board_page.dart';
import 'write_page.dart';

class DetailPage extends StatelessWidget {

  final int id;

  const DetailPage(this.id); 

  @override
  Widget build(BuildContext context) {

    String data = Get.arguments;

    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD:club_app/lib/page/board/notice_board/detail_page.dart
        backgroundColor: Colors.lightGreen,),
=======
        backgroundColor: Colors.red[300],
        ),
>>>>>>> jsver:club_app/lib/page/board/notice_board/detail_page_not.dart
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("공지 제목!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)),
            Divider(),
            Text("Page Number $id $data;"),
            Divider(),
            Row(
              children: [
                ElevatedButton(
                  onPressed : () { 
                    Get.off(NoticeBoardPage());
                  }, 
<<<<<<< HEAD:club_app/lib/page/board/notice_board/detail_page.dart
                  child: Text("삭제")
=======
                  child: Text("삭제"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[300],
                    // textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)
                    ),
>>>>>>> jsver:club_app/lib/page/board/notice_board/detail_page_not.dart
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed : () {
                    Get.to(WritePage());
                   }, 
<<<<<<< HEAD:club_app/lib/page/board/notice_board/detail_page.dart
                  child: Text("수정")
=======
                  child: Text("수정"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[300]
                  ),
>>>>>>> jsver:club_app/lib/page/board/notice_board/detail_page_not.dart
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text("공지 내용 " * 500 )))
          ],),
      )
    );
  }
}