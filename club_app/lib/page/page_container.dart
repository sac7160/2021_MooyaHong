import 'package:flutter/material.dart';
import 'package:club_app/page/board/notice_board/notice_board_page.dart';
import 'package:club_app/page/chat/chat_page.dart';
import 'package:club_app/page/home_page.dart';
import 'package:club_app/page/board/ad_board_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ChatScreen(),
    NoticeBoardPage(),
    AdBoardPage()
  ];
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 12,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'chat',
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              label: 'notice',
              icon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              label: 'ad',
              icon: Icon(Icons.hail),
            ),
          ],
        ));
  }
}
