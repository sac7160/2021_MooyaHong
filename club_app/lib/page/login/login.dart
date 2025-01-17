import 'package:flutter/material.dart';
import 'package:club_app/page/page_container.dart';
import 'package:club_app/page/login/sign_up_page1.dart';
import 'package:club_app/page/login/find_id_page.dart';
import 'package:club_app/page/login/find_pw_page.dart';

class LoginPage extends StatefulWidget {
  static final route = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
      color:Color(0xFFF5CEB8).withOpacity(0.6),
      padding: EdgeInsets.all(32),
      child: Center(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 90),
                Column(
                  children: <Widget>[
                    Container(
                       child: Image.asset('assets/hongiklogo.png'
                      ,
                        width: 200,
                        height: 200,
                       
                   )
                    ),
                    SizedBox(height: 40),
                    Text(
                      'HONGARI',
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: '아이디를 입력하세요',
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: '비밀번호를 입력하세요',
                              ),
                              obscureText: true,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 0),
                    Container(
                      width: 120,
                      height: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF5CEB8),  //버튼 색깔 정해야함
                              onPrimary: Colors.black),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstPage()),
                            );
                          },
                          child: Text(
                            'login',
                            textScaleFactor: 2.0,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF5CEB8).withOpacity(0.9),
                            onPrimary: Colors.black),
                        onPressed: () {},
                        child: Text('gmail 로 로그인'))),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            child: Text('아이디 찾기'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FindId()));
                            }),
                        TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            child: Text('비밀번호 찾기'),
                            onPressed: () {
                               Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FindPw()));
                            }),
                        TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            child: Text('회원가입'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage1()));
                            }),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
