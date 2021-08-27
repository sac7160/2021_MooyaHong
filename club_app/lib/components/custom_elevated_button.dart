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
<<<<<<< HEAD
=======
        primary: Colors.lightGreen[700],
>>>>>>> e5d714c23cf944ef174f5a5ab568938451a07963
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: funPageRoute,
<<<<<<< HEAD
      child: Text("$text")
=======
      child: Text("$text"),
>>>>>>> e5d714c23cf944ef174f5a5ab568938451a07963
      );
  }
}
