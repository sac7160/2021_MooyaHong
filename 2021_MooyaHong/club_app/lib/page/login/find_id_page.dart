import 'package:flutter/material.dart';
import 'package:club_app/page/login/login.dart';

class FindId extends StatefulWidget {
  const FindId({ Key? key }) : super(key: key);

  @override
  _FindIdState createState() => _FindIdState();
}

class _FindIdState extends State<FindId> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  labelText: '이름입력',
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
                         primary: Colors.orange, onPrimary: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage())
                    );
                  },
                  child: Text('아이디찾기'),
                ),
              ),
 

            ],
          ),),
      ),
      
    );
  }
}