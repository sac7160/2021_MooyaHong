import 'package:flutter/material.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  _ApplicationPageState createState() => _ApplicationPageState();
}

final List<String> members = <String>[
  '지원자1',
  '지원자2',
  '지원자3',
  '지원자4',
  '지원자5',
  '지원자6',
  '지원자7',
  '지원자8',
  '지원자9',
  '지원자10'
];

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('지원자 명단 확인하기'),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),
        body: //아니면 card 사용
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: members.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('이름: ${members[index]}'),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('학번: '),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('지원동기: '),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('수락'),
                                ),
                              ),
                              SizedBox(width: 30),
                              Container(
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('거절'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ));
                }));
  }
}
