
import 'package:club_app/components/custsom_text_formfield.dart';
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
            Column(children : <Widget>[ 
                    Divider(height: 20,),
                    Row(children: <Widget> [
                      Image.asset('assets/profile.jpg',
                        width: 40, height:40, fit: BoxFit.cover),
                          Column(children:<Widget>[
                            Padding(padding: const EdgeInsets.only(left: 4.0),
                              child: Align(
                                alignment: Alignment(-1.0,-1.0),
                                child: Row(children :[ 
                                  SizedBox(width: 5),Text('전지수  | 2021.09.26.오후 3:15',textAlign: TextAlign.start,)
                                  ]
                                  ))),
                            Padding(padding: const EdgeInsets.all(4.0),
                              child:Container(child: Align(
                                alignment:Alignment.centerLeft,
                                  child: Text('언제까지 내야하나요??????????')
                                  )
                                  )  //왼쪽정렬이 필요한데 안되네??
                                )
                                ]
                                )
            
          ],
          )
            ],
      ),
      Column(children : <Widget>[ 
                    Divider(height: 20,),
                    Row(children: <Widget> [
                      Image.asset('assets/profile.jpg',
                        width: 40, height:40, fit: BoxFit.cover),
                          Column(children:<Widget>[
                            Padding(padding: const EdgeInsets.only(left: 4.0),
                              child: Align(
                                alignment: Alignment(-1.0,-1.0),
                                child: Row(children :[ 
                                  SizedBox(width: 5),Text('권예빈  | 2021.09.26.오후 3:19',textAlign: TextAlign.start,)
                                  ]
                                  ))),
                            Padding(padding: const EdgeInsets.all(4.0),
                              child:Container(child: Align(
                                alignment:Alignment.centerLeft,
                                  child: Text('내일까지 납부 부탁드립니다.')
                                  )
                                  )  //왼쪽정렬이 필요한데 안되네??
                                )
                                ]
                                )
            
          ],
          )
            ],
      ),
      Column(children : <Widget>[ 
                    Divider(height: 20,),
                    Row(children: <Widget> [
                      Image.asset('assets/profile.jpg',
                        width: 40, height:40, fit: BoxFit.cover),
                          Column(children:<Widget>[
                            Padding(padding: const EdgeInsets.only(left: 4.0),
                              child: Align(
                                alignment: Alignment(-1.0,-1.0),
                                child: Row(children :[ 
                                  SizedBox(width: 5),Text('박창현  | 2021.09.26.오후 3:21',textAlign: TextAlign.start,)
                                  ]
                                  ))),
                            Padding(padding: const EdgeInsets.all(4.0),
                              child:Container(child: Align(
                                alignment:Alignment.centerLeft,
                                  child: Text('동아리 회비 금액은 어느정도인가요?')
                                  )
                                  )  //왼쪽정렬이 필요한데 안되네??
                                )
                                ]
                                )
            
          ],
          )
            ],
      ),
      Column(children : <Widget>[ 
                    Divider(height: 20,),
                    Row(children: <Widget> [
                      Image.asset('assets/profile.jpg',
                        width: 40, height:40, fit: BoxFit.cover),
                          Column(children:<Widget>[
                            Padding(padding: const EdgeInsets.only(left: 4.0),
                              child: Align(
                                alignment: Alignment(-1.0,-1.0),
                                child: Row(children :[ 
                                  SizedBox(width: 5),Text('김인영  | 2021.09.26.오후 3:25',textAlign: TextAlign.start,)
                                  ]
                                  ))),
                            Padding(padding: const EdgeInsets.all(4.0),
                              child:Container(child: Align(
                                alignment:Alignment.centerLeft,
                                  child: Text('한학기 무야홍 회비는 25만원입니다.')
                                  )
                                  )  //왼쪽정렬이 필요한데 안되네??
                                )
                                ]
                                )
            
          ],
          )
            ],
      )
          ]
        )
      )
    );
  }
}