import 'package:club_app/components/custom_elevated_button.dart';
import 'package:club_app/components/custom_textarea.dart';
import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:club_app/page/board/ad_board/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

class JoinPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.red[300],
        elevation: 0,leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),),
      body: Stack(
        children: <Widget> [
          Container(
            height: 1000,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8).withOpacity(0.3),
            ),
          ),
          Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                height: 70,
                child: Text("지원서 작성 페이지", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
              _joinForm(),
        ],  
        ),
        ),]
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                hint: "Username",
                funValidator: validateUsername()
                ),
                CustomTextFormField(
                hint: "전화번호",
                funValidator: validatephonenumber() 
                //원래 옛날에 만들었던 회원가입 페이지 그대로 이용이라 validate 속성좀 변경해야 할듯
                ),
                CustomTextFormField(
                hint: "Email",
                funValidator: validateEmail(),
                ),
                CustomTextArea(
                hint: "지원동기",
                funValidator: validatewrite()
                //이부분 칸좀 늘리기***&validate 수정하기
                ),
                CustomElevatedButton(
                  text: "지원서 제출하기",
                  funPageRoute: () {
                    if (_formKey.currentState!.validate()){
                      Get.to(DetailScreen(index: 1,));
                    }
                  },
                ),
          ],
        ),
      );
  }
}

validatewrite() {return (String? value){ 
    if (value!.isEmpty) {
      return "지원동기에는 공백이 들어갈 수 없습니다."; 
    } else if (!isAlphanumeric(value)){
      return "지원동기에는 알파벳과 숫자만이 들어갈 수 있습니다."; //한글로 바꿔야 할듯.
    } else if (value.length > 1000){
      return "지원동기의 최대 길이는 1000자입니다.";
    } else if( value.length < 50 ){
      return "지원동기의 최소 길이는 50자입니다.";
    } else {
      return null;
    }
  };
}

//,,,,,,왜 validator_utill에서 만든 function 을 가져오는 게 안되는거지??????

validateUsername() {
  return (String? value){ 
    if (value!.isEmpty) {
      return "이름에는 공백이 들어갈 수 없습니다."; 
    } else if (!isNumeric(value)){
      return "유저 네임에는 한글과 알파벳만이 들어갈 수 있습니다.";
    } else if (value.length > 12){
      return "유저네임의 길이를 초과하였습니다.";
    } else if( value.length < 4 ){
      return "유저네임의 최소 길이는 4자입니다.";
    } else {
      return null;
    }
  };
}

validatephonenumber() {
  return (String? value){ 
    if (value!.isEmpty) {
      return "전화번호에는 공백이 들어갈 수 없습니다."; 
    } else if (value.length > 11){
      return "01012345678형식으로 입력해주세요";
    } else if( value.length < 9 ){
      return "01012345678형식으로 입력해주세요";
    } else if (!isNumeric(value)){
      return "전화번호에는 숫자만이 들어갈 수 있습니다.";
    } else {
      return null;
    }
  };

}

validateEmail() {
   return (String? value){ 
    if (value!.isEmpty) {
      return "이메일에는 공백이 들어갈 수 없습니다."; 
    } else if (!isEmail(value)){
      return "이메일 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}



