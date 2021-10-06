import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';


class TestMe extends StatefulWidget {
  
  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  
  List filedata = [
    {
      'name': '전지수',
      'pic': 'https://picsum.photos/300/30',
      'message': '무야홍 회비 언제까지 내야하나요?'
    },
    {
      'name': '권예빈',
      'pic': 'https://picsum.photos/300/30',
      'message': '내일까지 납부 부탁드려용'
    },
    {
      'name': '박창현',
      'pic': 'https://picsum.photos/300/30',
      'message': '무야홍 회비 얼마인가요?'
    },
    {
      'name': '김인영',
      'pic': 'https://picsum.photos/300/30',
      'message': '한학기 기준 25만원입니다!'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              //이미 작성된 comment
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                ),//프로필 사진
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),//댓글's name
              subtitle: Text(data[i]['message']),
            ),//댓글's message
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text('공지글 상세페이지 댓글'),
        ),
      body: 
          Container(
            // width: 400,
            // height: 400,
            padding: EdgeInsets.all(10.0), 
            color: Color(0xFFF5CEB8).withOpacity(0.3),
            child: CommentBox(//현재 작성중인 comment
              userImage:
                  "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
              child: commentChild(filedata),//이미 작성된 comment
              labelText: '댓글 작성중...',
              withBorder: false,
              errorText: '댓글에 빈칸을 입력할 수 없습니다.',
              sendButtonMethod: () {
                if (formKey.currentState!.validate()) {
                  print(commentController.text);
                  setState(() {
                    var value = {
                      'name': 'New User',
                      'pic':
                          'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                      'message': commentController.text
                    };
                    filedata.insert(0, value);
                  });
                  commentController.clear();
                  FocusScope.of(context).unfocus();
                } else {
                  print("Not validated");
                }
              },
              formKey: formKey,
              commentController: commentController,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
            ),
                  
          ),
    );
  }
}