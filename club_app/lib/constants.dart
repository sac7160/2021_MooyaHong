import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFF8F8F8);
const kActiveIconColor = Color(0xFFE68342);
const kTextColor = Color(0xFF222B45);
const kBlueLightColor = Color(0xFFC7B8F5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFE6E6E6);

class MyProfileData{
  final String myThumbnail;
  final String myName;
  final List<String> myLikeList;
  final List<String> myLikeCommnetList;
  // final String myFCMToken;
  MyProfileData({required this.myName,required this.myThumbnail,required this.myLikeList,required this.myLikeCommnetList,
  // required this.myFCMToken
  });
}