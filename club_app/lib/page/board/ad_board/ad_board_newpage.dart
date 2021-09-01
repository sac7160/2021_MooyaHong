import 'package:club_app/page/board/ad_board/ad_detailpagetemp.dart';
import 'package:club_app/page/board/ad_board/write_page_ad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../home_page.dart';


class AdBoardPagenew extends StatefulWidget {
  const AdBoardPagenew({ Key? key }) : super(key: key);

  @override
  _AdBoardPageState createState() => _AdBoardPageState();
}

class _AdBoardPageState extends State<AdBoardPagenew> {
  
  List<Map<String, String >> datas = [];

  @override  //서버 개발시 json type으로 받아오는 것을 대신함. 
  void initState() {
    super.initState();
    datas = [
      {
      "image":"assets/images/1.jpeg",
      "title":"책아띠",
      "category":"학술",
      "state":"모집중",
      "date":"~09.20",
      "likes":"5"
    },
      {
      "image":"assets/images/2.jpeg",
      "title":"royalblack",
      "category":"기타",
      "state":"모집중",
      "date":"~09.21",
      "likes":"8"
    },
    {
      "image":"assets/images/3.jpeg",
      "title":"BITA",
      "category":"학술",
      "state":"모집중",
      "date":"~09.22",
      "likes":"77"
    },
    { 
      "image":"assets/images/4.jpeg",
      "title":"signal",
      "category":"영상",
      "state":"모집중",
      "date":"~09.10",
      "likes":"55"
    },
    {
      "image":"assets/images/5.jpeg",
      "title":"SNoL",
      "category":"기타",
      "state":"모집중",
      "date":"~09.19",
      "likes":"56"
    },
    {
      "image":"assets/images/6.jpeg",
      "title":"신나구",
      "category":"스포츠",
      "state":"모집중",
      "date":"~09.20",
      "likes":"10"
    },
    {
      "image":"assets/images/7.jpeg",
      "title":"DAISY",
      "category":"학술",
      "state":"모집중",
      "date":"~09.20",
      "likes":"546"
    },
    {
      "image":"assets/images/8.jpeg",
      "title":"이너리뷰",
      "category":"학술",
      "state":"모집중",
      "date":"~09.20",
      "likes":"555"
    },
    {
      "image":"assets/images/9.jpeg",
      "title":"라온",
      "category":"문화",
      "state":"모집중",
      "date":"~09.20",
      "likes":"15"
    },
    {
      "image":"assets/images/10.jpeg",
      "title":"CEOS",
      "category":"창업",
      "state":"모집중",
      "date":"~09.20",
      "likes":"9"
    },
    ];
  }

  Widget _bodywidget() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemBuilder: (context, index) {
        Map<String?, String?> data = datas[index];
        String image = data["image"] as String;
        String title = data["title"] as String;
        String category = data["category"] as String;
        String state = data["state"] as String;
        String date = data["date"] as String;
        String likes = data["likes"] as String;

        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return DetailContentView(
                // data: datas[index],
                );
            }));
            print(title);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            image,
                            width: 100,
                            height: 100,
                          ),
                        ),
                        SizedBox(width:20),
                        Expanded(
                          child:Container(
                            color :Colors.transparent,
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  overflow:TextOverflow.ellipsis, //textoverflow시에 ...으로 처리.
                                  style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold),),
                                SizedBox(height: 5),
                                Text(category,
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black.withOpacity(0.3)),),
                                SizedBox(height: 5),
                                Text(date,
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue[900]),),
                                SizedBox(height: 5),
                                Text(state,
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.red[400]),),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                      SvgPicture.asset("assets/svg/heart_off.svg",width:13,height: 13,),
                                      SizedBox(width: 5),
                                      Text(likes),
                                     ],
                                ),
                                  ),
                                ),
                                ],
                              ),
                          ),
                        )
                      ],
                    )
            ),
        );
        }, 
      separatorBuilder: (BuildContext _context, int index) {
        return Container(height: 1, color: Colors.black.withOpacity(0.4));
      }, 
      itemCount: 10,
      );
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('동아리 홍보 게시판'),
        backgroundColor: Colors.lightGreen,
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
      
      body: _bodywidget(),
    );
  }
}