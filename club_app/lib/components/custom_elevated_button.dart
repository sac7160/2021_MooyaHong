import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:try1/pages/user/login_page.dart';

class CustomElevatedButton extends StatelessWidget {

  final String text;
  final funPageRoute;


  const CustomElevatedButton({required this.text, required this.funPageRoute});
  


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.lightGreen[700],
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: funPageRoute,
      child: Text("$text"),
      );
  }
}
