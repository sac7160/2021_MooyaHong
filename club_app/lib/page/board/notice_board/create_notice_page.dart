import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateNotice extends StatelessWidget {
  const CreateNotice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: Text('공지사항 작성'),
      ),
      body: const NoticeFormField(),
    );
  }
}

class NoticeFormField extends StatefulWidget {
  const NoticeFormField({Key? key}) : super(key: key);

  @override
  _NoticeFormFieldState createState() => _NoticeFormFieldState();
}

class _NoticeFormFieldState extends State<NoticeFormField> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '제목',
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              height: 300,
              child: TextField(
                keyboardType:
                    TextInputType.multiline, //이거 써도 입력줄바꿈이안됨 maxLines써도 안
                maxLines: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '내용',
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 400.0)),
              ),
            ),
            FloatingActionButton(
              child: Icon(Icons.print),
              onPressed: () => showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(content: Text(myController.text));
                  }),
            )
          ],
        ));
  }
}
