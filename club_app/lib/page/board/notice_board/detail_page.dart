
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notice_board_page.dart';
import 'write_page.dart';

class DetailPage extends StatelessWidget {

  final int id;

  const DetailPage(this.id); 

  @override
  Widget build(BuildContext context) {

    // String data =Get.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("공지 제목!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)),
            Divider(),
            Row(
              children: [
                ElevatedButton(
                  onPressed : () { 
                    Get.off(NoticeBoardPage());
                  }, 
                  child: Text("삭제")
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed : () {
                    Get.to(WritePage());
                   }, 
                  child: Text("수정")
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