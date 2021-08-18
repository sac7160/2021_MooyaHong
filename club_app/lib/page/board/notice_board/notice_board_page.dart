import 'package:flutter/material.dart';
import 'package:club_app/page/board/notice_board/notice_page.dart';
import 'package:club_app/page/board/notice_board/create_notice_page.dart';

class NoticeBoardPage extends StatefulWidget {
  const NoticeBoardPage({Key? key}) : super(key: key);

  @override
  _NoticeBoardPageState createState() => _NoticeBoardPageState();
}

class _NoticeBoardPageState extends State<NoticeBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('공지사항 게시판', style: TextStyle(color: Colors.black)),
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text('go back'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                  child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(10.0),
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('공지사항1'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NoticePage()));
                        },
                      )),
                  Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('공지사항2'),
                        onPressed: () {},
                      )),
                  Container(
                    padding: EdgeInsets.all(1.0),
                    child: OutlinedButton(
                      child: Text('공지사항3'),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('공지사항4'),
                        onPressed: () {},
                      )),
                  Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('공지사항5'),
                        onPressed: () {},
                      )),
                  Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('공지사항6'),
                        onPressed: () {},
                      )),
                  Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('공지사항7'),
                        onPressed: () {},
                      )),
                  Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('공지사항8'),
                        onPressed: () {},
                      )),
                ],
              )),
              FloatingActionButton.extended(
                icon: const Icon(Icons.add),
                label: Text('게시글쓰기'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateNotice()),
                  );
                },
              ),
            ],
          )),
    );
  }
}
