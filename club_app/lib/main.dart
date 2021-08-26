import 'package:club_app/page/page_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:club_app/page/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'First page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
