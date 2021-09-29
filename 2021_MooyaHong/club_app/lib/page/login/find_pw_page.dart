import 'package:flutter/material.dart';
import 'package:club_app/page/login/login.dart';

class FindPw extends StatefulWidget {
  const FindPw({ Key? key }) : super(key: key);

  @override
  _FindPwState createState() => _FindPwState();
}

class _FindPwState extends State<FindPw> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5CEB8).withOpacity(0.6),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.account_circle),
                  labelText: '아이디 입력',
                  hintText: '이름' ),
                onSaved: (val){},
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.account_circle),
                  labelText: '이메일입력',
                  hintText: '이메일' ),
                onSaved: (val){},
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                         primary: Color(0xFFF5CEB8), onPrimary: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage())
                    );
                  },
                  child: Text('비밀번호 찾기'),
                ),
              ),
 

            ],
          ),),
      ),
      
    );
  }
}