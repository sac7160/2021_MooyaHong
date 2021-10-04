import 'package:flutter/material.dart';
//to 공지글 작성
class CustomTextArea2 extends StatelessWidget {
  
  final String hint;
  final funValidator;

  const CustomTextArea2({required this.hint, required this.funValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        maxLines: 20,
        validator: funValidator,
        decoration: InputDecoration(
          hintText:"Enter $hint",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            ),
          focusedErrorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            ),
          ),
      ),
    );
  }
}