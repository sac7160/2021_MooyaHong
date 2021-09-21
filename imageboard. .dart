import 'package:flutter/material.dart';

class AdBoardPage extends StatefulWidget {
  const AdBoardPage({ Key? key }) : super(key: key);

  @override
  _AdBoardPageState createState() => _AdBoardPageState();
}

class _AdBoardPageState extends State<AdBoardPage> {
  
  List<Map<String, String >> datas = [];

  @override
  void initState() {
    super.initState();
    datas = [
      {
      "title":"책아띠",
      "image":"assets/images/1.jpeg",
      "category":"학술",
      "ing":"true"
    },
    {
      "title":"royalblack",
      "image":"assets/images/2.jpeg",
      "category":"기타",
      "ing":"true"
    },
    {
      "title":"BITA",
      "image":"assets/images/3.jpeg",
      "category":"학술",
      "ing":"true"
    },
    {
      "title":"signal",
      "image":"assets/images/4.jpeg",
      "category":"영상",
      "ing":"true"
    },
    ];
  }

  Widget _bodywidget() {
    return ListView.separated(
      itemBuilder: (BuildContext _context, int index) {
        return Container(
          child: Row(
            children: [
              ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                datas[index]["image"],
                width: 100,
                height: 100,
              ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(datas[index]["title"]),
                    Text(datas[index]["category"]),
                    Text(datas[index]["ing"])
                    ],
                ),)
          ],
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
      appBar: AppBar(title: Text('동아리 홍보 게시판'),
      ),
      body: _bodywidget(),
    );
  }
}