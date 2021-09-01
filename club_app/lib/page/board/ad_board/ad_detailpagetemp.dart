import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailContentView extends StatefulWidget {
  //#7
  // Map<String?, String?> _data = datas[index];
  // DetailContentView({ Key? key ,this.data }) : super(key: key);

  @override
  _DetailContentViewState createState() => _DetailContentViewState();
}

class _DetailContentViewState extends State<DetailContentView> {

  Widget _bodywidget () {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('동아리 홍보 게시판'),
        backgroundColor: Colors.lightGreen,
      ),
      body: _bodywidget(),
    );
  }
}