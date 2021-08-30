import 'package:flutter/material.dart';

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
      "ing":"true"
    },
      {
      "image":"assets/images/2.jpeg",
      "title":"royalblack",
      "category":"기타",
      "ing":"true"
    },
    {
      "image":"assets/images/3.jpeg",
      "title":"BITA",
      "category":"학술",
      "ing":"true"
    },
    { 
      "image":"assets/images/4.jpeg",
      "title":"signal",
      "category":"영상",
      "ing":"true"
    },
    ];
  }

  Widget _bodywidget() {
    return ListView.separated(
      itemBuilder: (context, index) {
        Map<String, String> data = datas[index];
        String image = data["image"] as String;
        return Container(
          child: Row(
            children: [
              Image.asset(image),
            ],
          )
          );
        }, 
      separatorBuilder: (BuildContext _context, int index) {
        return Container(height: 1, color: Colors.black.withOpacity(0.4));
      }, 
      itemCount: 4,
      );
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('동아리 홍보 게시판'),
      ),
      body: _bodywidget(),
    );
  }
}