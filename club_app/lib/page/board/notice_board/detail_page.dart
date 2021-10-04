
import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:club_app/page/board/notice_board/comment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notice_board_page.dart';
import 'rewritepage.dart';
import 'write_page.dart';

class DetailPage extends StatelessWidget {

  final int id;
  const DetailPage(this.id); 

_showMessageDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('주의'),
            content: Text('정말 이 글을 삭제하시겠습니까?'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('아니요')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NoticeBoardPage()));
                  },
                  child: Text('예')),
            ],
          ));

  @override
  Widget build(BuildContext context) {

    String data = Get.arguments ??"";
    Get.testMode = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("2학기 무야홍 회비 입금 안내",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
            Divider(),
            Text("Page Number $id $data;2021.09.26 오후 2:16"),
            Divider(),
            Row(
              children: [
                ElevatedButton(
                  onPressed : () { 
                    return _showMessageDialog(context);
                  }, 
                  child: Text("삭제"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[300],
                    // textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)
                    ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed : () {
                    Get.to(ReWritePage());
                   }, 
                  child: Text("수정"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[300]
                  ),
                ),
              ],
            ),
            Container(
              child: SingleChildScrollView(
                child: Text("공지 사항 내용"*30 ,style: TextStyle(fontSize: 18),))
                ),
            ElevatedButton(
                  onPressed : () {
                    Get.to(TestMe());
                   }, 
                  child: Text("댓글"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[300]
                  ),
                ),
          
          ]
        )
      )
    );
  }
}