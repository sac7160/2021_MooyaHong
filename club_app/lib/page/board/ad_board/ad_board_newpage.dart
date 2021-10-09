import 'package:club_app/page/board/ad_board/write_page_ad.dart';
import 'package:club_app/page/board/notice_board/write_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

import '../../../constants.dart';
import '../search_bar.dart';
import 'detail_page.dart';


class AdBoardPagenew extends StatelessWidget {
  // This widget is the root of your application.

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
              return WritePageadd();
              }
              ),
              );
            }
          ),
          ]
      ),
      body: HomeScreen()
       
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Club App',
    //   theme: ThemeData(
    //     fontFamily: "Cairo",
    //     scaffoldBackgroundColor: kBackgroundColor,
    //     textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
    //   ),
    //   home: HomeScreen(),
    
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
                  Text(
                    "Club advertise Board ",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  SearchBar(),
                  Expanded(
                    child: 
                      GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .7,
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 30,
                      children: <Widget>[
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17),
                                  Text("책아띠",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("학술")],)
                                ],
                              ),
                              Image.asset("assets/images/1.jpeg"),
                              //Text("#독서 #독서토론 #토론 #연합 #연합동아리",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                            //svg 이미지 사용하기 복잡한거같은데 이런식으로 하면 안될까요?
                            
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17,height: 5,),
                                  Text("로얄 블랙",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30,height: 5,),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("친목")],)
                                ],
                              ),
                              Image.asset("assets/images/2.jpeg"),
                             // Text("#소통 #연합 #연합동아리",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17,height: 5,),
                                  Text("BITA",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30,height: 5,),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("학술")],)
                                ],
                              ),
                              Image.asset("assets/images/3.jpeg"),
                              //Text("#빅데이터 #학술",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17,height: 5,),
                                  Text("SIGNAL",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30,height: 5,),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("영상")],)
                                ],
                              ),
                              Image.asset("assets/images/4.jpeg"),
                              //Text("#영상 #동영상 #만들기 #연합 #연합동아리",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17,height: 5,),
                                  Text("SNOL",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30,height: 5,),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("기획")],)
                                ],
                              ),
                              Image.asset("assets/images/5.jpeg"),
                              //Text("#파티문화 #기획 #포스터",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17,height: 5,),
                                  Text("신나구",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30,height: 5,),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("운동")],)
                                ],
                              ),
                              Image.asset("assets/images/6.jpeg"),
                              //Text("#야구직관 #야구 #신촌연합 #연합동아리",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17,height: 5,),
                                  Text("DAISY",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30,height: 5,),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("학술")],)
                                ],
                              ),
                              Image.asset("assets/images/7.jpeg"),
                              //Text("#영어 #영어회화 #연합 #연합동아리",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                        InkWell(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  SizedBox(width: 17,height: 5,),
                                  Text("이너리뷰",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  SizedBox(width: 30,height: 5,),
                                  Column(children: [Text("모집중",style: TextStyle(color:Colors.redAccent)),Text("영상")],)
                                ],
                              ),
                              Image.asset("assets/images/8.jpeg"),
                              //Text("#유튜브 #콘텐츠 #작가 #편집자",style: TextStyle(color:Colors.black),)
                              
                            ],
                          ),
                            onTap: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},), 
                        
                      ],
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
