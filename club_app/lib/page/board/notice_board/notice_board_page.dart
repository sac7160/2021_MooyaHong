import 'package:flutter/material.dart';
//import 'package:club_app/page/board/notice_board/notice_page.dart';
//import 'package:club_app/page/board/notice_board/create_notice_page.dart';
import 'package:get/get.dart';

import '../../home_page.dart';
import 'detail_page_not.dart';
import 'write_page_not.dart';

class NoticeBoardPage extends StatefulWidget {
  const NoticeBoardPage({Key? key}) : super(key: key);

  @override
  _NoticeBoardPageState createState() => _NoticeBoardPageState();
}

class _NoticeBoardPageState extends State<NoticeBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('공지사항'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              ),
            onPressed: () {
              print('create button is clicked');
              Get.to(HomePage());},
          ),
        actions: <Widget>[
           IconButton(
          icon: Icon(Icons.create),
          onPressed: () {
            print('create button is clicked');
            Get.to(WritePage());
            }
          ),
          // IconButton(
          // icon: Icon(Icons.sync_alt),
          // onPressed: () {
          //   print('sync_alt button is clicked');
          //   }
          // ),
          // IconButton(
          // icon: Icon(Icons.settings),
          // onPressed: () {
          //   print('setting button is clicked');
          //   }
          // ),
          ]
      ),
      body: 
       ListView.separated(
        itemCount : 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () { 
              Get.to(DetailPagenot(index),arguments: "arguments 속성 테스트");
            },
            title: Text('공지사항 제목',style: TextStyle(fontSize: 20.0),),
            leading: Text("1"),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal:0.0),
            );
          }, 
      separatorBuilder:  (context, index) {
        return Divider();
      } ,
    ),
    );
  }
}
