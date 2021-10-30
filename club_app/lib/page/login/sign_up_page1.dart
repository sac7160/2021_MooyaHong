import 'package:flutter/material.dart';
import 'package:club_app/page/login/login.dart';
import 'package:club_app/page/login/sign_up_page2.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({Key? key}) : super(key: key);

  @override
  _SignUpPage1State createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
  bool _isChecked_all = false;
  bool _isChecked_1 = false;
  bool _isChecked_2 = false;
  bool _isChecked_3 = false;

  _showMessageDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('주의'),
            content: Text('필수 약관에 동의하셔야 합니다'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('확인'))
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xFFF5CEB8).withOpacity(0.6),
          padding: EdgeInsets.all(20),
          child: Center(
            child: ListView(
              children: <Widget>[
                Row(
                  children: [
                    Checkbox(
                        value: _isChecked_all,
                        onChanged: (value) {
                          setState(() {
                            if (_isChecked_all == false) {
                              _isChecked_all = true;
                              print('test_체크됨');
                              _isChecked_1 = true;
                              _isChecked_2 = true;
                              _isChecked_3 = true;
                            } else {
                              _isChecked_all = false;
                              print('test_체크안됨');
                            }
                          });
                        }),
                    Text('이용약관에 모두 동의')
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black87,
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _isChecked_1,
                        onChanged: (value) {
                          setState(() {
                            if (_isChecked_1 == false) {
                              _isChecked_1 = true;
                              print('test_체크됨');
                            } else {
                              _isChecked_1 = false;
                              print('test_체크안됨');
                            }
                          });
                        }),
                    Text('이용약관 동의 (필수)')
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
                  height: 150,
                  decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5)),
                  child: ListView(
                    children: [Text('본 정책은 Hognari 가 제공하는 기능을 지원하기 위해 Hongari에서 처리하는 정보를 설명합니다. 추가적인 도구 및 정보는 Hongari 설정에서 확인할 수 있습니다. \n 1.당사가 수집하는 정보의 유형 \n Hongari 서비스를 제공하기 위해 당사는 회원님에 대한 정보를 처리해야 합니다. 수집하는 정보의 유형은 회원님이 Hongari 서비스를 이용하는 방법에 따라 다릅니다. ',
                    style: TextStyle(fontWeight: FontWeight.w100),)],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _isChecked_2,
                        onChanged: (value) {
                          setState(() {
                            if (_isChecked_2 == false) {
                              _isChecked_2 = true;
                              print('test_체크됨');
                            } else {
                              _isChecked_2 = false;
                              print('test_체크안됨');
                            }
                          });
                        }),
                    Text('개인정보 이용 동의 (필수)')
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
                  height: 150,
                  decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5)),
                  child: ListView(
                    children: [Text('서비스 약관 \n Hongari 에 오신 것을 환영합니다. Hongari는 사람들이 서로 교류하고 community를 만들며 동아리를 활성화할 수 있는 기술과 서비스를 개발합니다.(본 약관이 아닌) 별도의 약관이 적용된다고 명시되어있지 않은 한 본 약관은 회원님의 Hongari 및 기타 Hongari가 제공하는 소프트웨어 이용에 적용됩니다. Hongari는 회원님에게 Hongari가 적용되는 제품의 사용료를 청구하지 않습니다.',
                  style: TextStyle(fontWeight: FontWeight.w100),)],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _isChecked_3,
                        onChanged: (value) {
                          setState(() {
                            if (_isChecked_3 == false) {
                              _isChecked_3 = true;
                              print('test_체크됨');
                            } else {
                              _isChecked_3 = false;
                              print('test_체크안됨');
                            }
                          });
                        }),
                    Text('홍보 (선택)')
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
                  height: 150,
                  decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5)),
                  child: ListView(
                    children: [Text('홍보 약관 \n홍보 해도 될까요?',
                    style: TextStyle(fontWeight: FontWeight.w100),)],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(
                       builder: (context) => Container(
                       width: 100,
                       height: 50,
                       child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF5CEB8),
                          onPrimary: Colors.black,
                                 ),
                       onPressed: () {
                               Navigator.pop(context);
                           },
                       child: Text('취소')),
                       ),
                    ),
                   SizedBox(width: 50),
                   Builder(
                         builder: (context) => Container(
                         width: 100,
                         height: 50,
                         child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                         primary: Color(0xFFF5CEB8), onPrimary: Colors.black),
                         onPressed: () {
                           if(_isChecked_1 == false || _isChecked_2 ==false){
                             _showMessageDialog(context);
                           }else{
                              Navigator.pop(context); 
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpPage2()),
                              );
                         }},
                         child: Text('다음')),
                          ),
                   )
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
