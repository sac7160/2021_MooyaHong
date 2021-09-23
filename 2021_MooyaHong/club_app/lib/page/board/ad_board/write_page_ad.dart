//todo 모집기간 validate 생성
import 'package:club_app/components/custom_elevated_button.dart';
import 'package:club_app/components/custom_textarea.dart';
import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../notice_board/notice_board_page.dart';

class WritePageadd extends StatelessWidget {

  final _formKey = GlobalKey<FormState>(); 
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5CEB8),
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
          SafeArea(
            child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children:[
            CustomTextFormField(
              hint: "Title", 
              funValidator: validateTitle(), //제목에는 ~가 들어갈 수 없습니다. 
            ),
            CustomTextFormField(
              hint: "Period", 
              funValidator: validateTitle(), //모집기간에는 ~가 들어갈 수 없습니다. 
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
      )
      ),
        ]
      )
    );
  }
}

validateTag() {
  return (String? value){  
    if (value!.isEmpty) {
      return "태그에는 공백이 들어갈 수 없습니다."; 
    } else if (value.length > 30) {
      return "태그의 길이를 초과하였습니다.";
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
