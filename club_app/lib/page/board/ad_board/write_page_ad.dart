import 'dart:io';

import 'package:club_app/components/custom_elevated_button.dart';
import 'package:club_app/components/custom_textarea.dart';
import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:validators/validators.dart';

import 'ad_board_newpage.dart';

class WritePageadd extends StatefulWidget {

  @override
  _WritePageaddState createState() => _WritePageaddState();
}

class _WritePageaddState extends State<WritePageadd> {
  final _formKey = GlobalKey<FormState>(); 
  File? image;
  

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      //final imagePermanent = await saveImagePermanently(image.path);
      setState(() => this.image = imageTemporary);
    } on Exception catch (e) {
      print('이미지 설정 실패: $e');
      //todo
    }
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text("홍보 게시글 작성"),),
      body: Stack(
        children: <Widget>[
        Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .80,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8).withOpacity(0.3),
            ),
          ),
        Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children:[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red[200],
              ),
              onPressed: () => pickImage(ImageSource.gallery), 
              child: Text("Image Add"),
            ),
            CustomTextFormField(
              hint: "Title", 
              funValidator: validateTitle(), //제목에는 ~가 들어갈 수 없습니다. 
            ),
            CustomTextFormField(
              hint: "Deadline", 
              funValidator: validatePeriod(), //기간에는 ~가 들어갈 수 없습니다. 
            ),
            CustomTextFormField(
              hint: "HashTag", 
              funValidator: validateTag(), //태그에는 ~가 들어갈 수 없습니다. 
            ),
            CustomTextArea(
              hint: "Content" ,
              funValidator: validateContent(),
               //내용에는 ~가 들어갈 수 없습니다. 
            ),
            CustomElevatedButton(
              text: "글 작성하기",
              funPageRoute: () {
                if (_formKey.currentState!.validate()){
                  Get.to(AdBoardPagenew());
                }
              },
              ),
              ]
              ),
              ),
    ),])
    );
  }
}
validateTag() {
  return (String? value){ 
    if (value!.isEmpty) {
      return "해쉬태그에는 공백이 들어갈 수 없습니다."; 
    } else if (value.length > 50) {
      return "내용의 길이를 초과하였습니다.";
    } else {
      return null;
    }
  };
}

validatePeriod() {
  return (String? value){ 
    if (value!.isEmpty) {
      return "기간에는 공백이 들어갈 수 없습니다."; 
    }else if (!isDate(value)) {
      return "2021-10-30형식으로 입력해주세요."; 
    } else if (value.length > 50) {
      return "기간의 길이 초과하였습니다.";
    } else {
      return null;
    }
  };
}

validateContent() {
  return (String? value){ 
    if (value!.isEmpty) {
      return "내용에는 공백이 들어갈 수 없습니다."; 
    } else if (value.length > 500) {
      return "내용의 길이를 초과하였습니다.";
    } else {
      return null;
    }
  };
}

validateTitle() {
  return (String? value){ 
    if (value!.isEmpty) {
      return "제목에는 공백이 들어갈 수 없습니다."; 
    } else if (value.length > 30) {
      return "제목의 길이를 초과하였습니다.";
    } else {
      return null;
    }
  };
}
