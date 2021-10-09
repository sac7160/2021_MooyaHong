import 'package:flutter/material.dart';
//공지글 수정 페이지 제목
class CustomTextFormField extends StatelessWidget {
  
  final String hint;
  final funValidator;

  const CustomTextFormField({required this.hint, required this.funValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        initialValue: '2학기 무야홍 회비 입금 안내',
        validator: funValidator,
        obscureText: hint=="Password" ? true : false,
        decoration: InputDecoration(
          hintText:"Enter $hint",
          enabledBorder: OutlineInputBorder(
            ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            ),
          focusedErrorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            ),
          ),
      ),
    );
  }
}