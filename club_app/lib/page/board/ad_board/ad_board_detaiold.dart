
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../notice_board/notice_board_page.dart';
import '../notice_board/write_page_not.dart';

class DetailPageadd extends StatelessWidget {

  final int id;

  const DetailPageadd(this.id); 

  @override
  Widget build(BuildContext context) {

    // String data =Get.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("홍보게시글 제목!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)),
            Divider(),
            Row(
              children: [
                ElevatedButton(
                  onPressed : () { 
                    Get.off(NoticeBoardPage());
                  }, 
                  child: Text("삭제"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen[700],
                    // textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)
                    ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed : () {
                    Get.to(WritePage());
                   }, 
                  child: Text("수정"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen[700]
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text("홍보 내용 " * 500 )))
          ],),
      )
    );
  }
}