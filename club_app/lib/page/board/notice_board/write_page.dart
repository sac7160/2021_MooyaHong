import 'package:club_app/components/custom_elevated_button.dart';
import 'package:club_app/components/custom_textarea2.dart';
import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'notice_board_page.dart';

class WritePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>(); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFFF5CEB8),
        title: Text("공지글 작성")),
      body: Stack(
        children: <Widget>[
          // Container(
          //   height: 1000,
          //   decoration: BoxDecoration(
          //     color: Color(0xFFF5CEB8).withOpacity(0.3),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
            key: _formKey,
            child: ListView(
              children:[
              CustomTextFormField(
                hint: "Title", 
                funValidator: validateTitle(),
              ),
              CustomTextArea2(
                hint: "Content" ,
                funValidator: validateContent(),
              ),
              CustomElevatedButton(
                text: "글쓰기",
                funPageRoute: () {
                  if (_formKey.currentState!.validate()){
                    Get.off(NoticeBoardPage());
                  }
                },
                ),
                ]
                ),
                ),
        ),] 
      )
      );
  }
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
