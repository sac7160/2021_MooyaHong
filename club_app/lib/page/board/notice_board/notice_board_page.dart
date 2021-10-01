//todo detailpage route null. first, get => navigator error
import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
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
      // resizeToAvoidBottomInset: false,
      body: Stack(
         children: <Widget> 
          [Container(
            height: 1000,
            decoration: BoxDecoration(
              color: Colors.white,),
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context,int index) {
                return Divider();
              }, 
              itemCount: 10,
              itemBuilder: (context,index){
              return InkWell(
                child: ListTile(
                  leading: Icon(Icons.check),
                  title:Transform(
                    transform: Matrix4.translationValues(-20, 0.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(width: 190,child: Text('2021.09.26/오후 2:16',style: TextStyle(fontSize: 16.0))),
                        SizedBox(height: 20,),
                        Center(child: Text('2학기 무야홍 회비 입금 안내',style: TextStyle(fontSize: 23.0,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 20,),
                        Text('공지 사항 내용 '*30, style: TextStyle(fontSize: 18),),
                        SizedBox(height: 15),
                        Divider(color: Colors.red[200]),
                        Container(
                          child: Row(
                            children:<Widget>[
                              Text("4개의 댓글",style: TextStyle(fontWeight: FontWeight.bold),
                              
                              ),
                              SizedBox(width: 15,),
                              Image.asset('assets/profile.jpg',width: 40, height:40, fit: BoxFit.cover),
                              // Image.asset('assets/profilewhite.jpg',width: 30, height:30, fit: BoxFit.cover)
                              ]),
                              
                        ),
              
                        ]
                          ),
                          ),
                          ),
                onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailPage(1);
                              }),
                            );},
              );
                        }
                      
          
          )
          ]
          )
          
    );
  }
}
