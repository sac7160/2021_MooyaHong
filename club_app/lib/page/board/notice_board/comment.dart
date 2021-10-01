import 'package:club_app/components/custsom_text_formfield.dart';
import 'package:flutter/material.dart';

import 'write_page.dart';

class comment extends StatefulWidget {
  const comment({ Key? key }) : super(key: key);

  @override
  _commentState createState() => _commentState();
}

class _commentState extends State<comment> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget>[
          Padding(padding: const EdgeInsets.all(4.0),
                        child: Column(
                            children : <Widget>[ 
                              Divider(height: 40,),
                              Row(
                              children: <Widget> [
                                Image.asset('assets/profile.jpg',
                                    width: 40, height:40, fit: BoxFit.cover),
                                Column(
                                  children:<Widget>[
                                    Padding(padding: const EdgeInsets.only(left: 4.0),
                                    child: Align(
                                      alignment: Alignment(-1.0,-1.0),
                                      child: Row(children :[ SizedBox(width: 5),Text('전지수  | 2 minutes ago',textAlign: TextAlign.start,)]))),
                                    Padding(padding: const EdgeInsets.all(4.0),
                                      child:Container(child: Align(
                                      alignment:Alignment.centerLeft,
                                      child: Text('언제까지 내야하나요??????????')))
                                      //왼쪽정렬이 필요한데 안되네??
                                )
                                ]
                                )
                                ],
                            ),
                            Row(
                              children: <Widget>[
                                CustomTextFormField(hint: "Title",
                                  funValidator: validateTitle(),),
                              ]),
                            ]
                          ),
                        )
                        ]
                        );
  }
}