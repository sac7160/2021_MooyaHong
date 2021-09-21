import 'package:club_app/page/board/notice_board/detail_page_add.dart';
import 'package:club_app/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notice_board/write_page_ad.dart';

class AdBoardPage extends StatefulWidget {
  const AdBoardPage({Key? key}) : super(key: key);

  @override
  _AdBoardPageState createState() => _AdBoardPageState();
}

class _AdBoardPageState extends State<AdBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('동아리 홍보 게시판'),
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
            Get.to(WritePageadd());
            }
          ),
          ]
      ),
      body: 
       ListView.separated(
        itemCount : 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () { 
              Get.to(DetailPageadd(index),arguments: "arguments 속성 테스트");
            },
            title: Text('홍보게시글 제목',style: TextStyle(fontSize: 20.0),),
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
//수정전 ad board page