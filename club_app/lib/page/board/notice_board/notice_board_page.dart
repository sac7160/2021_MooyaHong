//todo detailpage route null. first, get => navigator error
import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:club_app/page/board/notice_board/notice_page.dart';
//import 'package:club_app/page/board/notice_board/create_notice_page.dart';
import 'package:get/get.dart';
import '../search_bar.dart';
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
      // drawer: Container(
      //   width: 300,
      //   height: double.infinity,
      //   color: Colors.grey[300],
      // ),
      appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black), // set your color here
        onPressed: () {},
  ),
        backgroundColor: Color(0xFFF5CEB8).withOpacity(0.3),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
           IconButton(
          color: Colors.black,
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
          ]
      ),
      // resizeToAvoidBottomInset: false,
      body: HomeScreen()
    );
  }
}



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .99,
            width: size.width * .99,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8).withOpacity(0.3),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: 52,
                  //     width: 52,
                  //     decoration: BoxDecoration(
                  //       color:  Color(0xFF817DC0),
                  //       shape: BoxShape.circle,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  Text(
                    "Noice Board ",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    height: 20,
                    color: Colors.black,),
                  Expanded(
                    child:Stack(
               children: <Widget> 
                [
                  Container(
                  height: MediaQuery.of(context).size.height*0.9,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   // border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                  ListView.separated(
                    separatorBuilder: (BuildContext context,int index) {
                      return Divider(height: 1,color: Colors.grey,thickness: 0.5,);
                    }, 
                    itemCount: 10,
                    itemBuilder: (context,index){
                    return InkWell(
                      child: ListTile(
                        focusColor: Colors.red[300],
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
                              Text('공지 사항 내용 '*10, style: TextStyle(fontSize: 18),),
                              SizedBox(height: 15),
                              Divider(),
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
                              SizedBox(height: 5,)
                    
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
                            
                
                ),
                
                ]
                ), 
                      
                        
                      
                    
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}