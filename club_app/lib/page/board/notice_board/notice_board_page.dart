//todo detailpage route null. first, get => navigator error
import 'package:flutter/material.dart';
//import 'package:club_app/page/board/notice_board/notice_page.dart';
//import 'package:club_app/page/board/notice_board/create_notice_page.dart';
import 'package:get/get.dart';

import 'detail_page.dart';
import 'write_page.dart';

class NoticeBoardPage extends StatefulWidget {
  const NoticeBoardPage({Key? key}) : super(key: key);

  @override
  _NoticeBoardPageState createState() => _NoticeBoardPageState();
}

class _NoticeBoardPageState extends State<NoticeBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 300,
        height: double.infinity,
        color: Colors.grey[300],
      ),
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text('공지사항'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.create),
          onPressed: () {
            print('create button is clicked');
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return WritePage();
              }
              ),
              );
            }
          ),
          IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            print('setting button is clicked');
            }
          ),
          ]
      ),
      body: 
       Stack(
         children: <Widget> 
          [Container(
            // Here the height of the container is 45% of our total height
            height: 1000,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8).withOpacity(0.3),
            ),
          ),ListView.separated(
          itemCount : 20,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () { 
                // Get.to(DetailPage(index),arguments: "arguments 속성 테스트");
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                return DetailPage(index);
                }
                ),
                );
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
          ]
       ),
    );
  }
}
