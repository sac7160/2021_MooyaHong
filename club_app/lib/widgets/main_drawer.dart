import 'package:club_app/page/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:club_app/page/chat/chat_page.dart';
import 'package:club_app/page/settings/member_management.dart';
import 'package:club_app/page/settings/my_club_page.dart';
import 'package:club_app/page/settings/profile_setting_page.dart';
import 'package:club_app/page/settings/alert_setting_page.dart';
import 'package:club_app/page/settings/edit_password.dart';

class MainDrawer extends StatelessWidget {
  final drawerHeader = UserAccountsDrawerHeader(
    accountName: Text('사용자1'),
    accountEmail: Text('컴퓨터공학과 1학년'),
    currentAccountPicture: Container(
      child: Builder(
          builder: (context) => IconButton(
                icon: Image.asset('images/profile.jpg'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileSetting()),
                  );
                },
                iconSize: 100,
              )),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          drawerHeader,
          /*Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  'assets/images/profile_bg_01.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeIn시ets.only(bottom: 10),
                width: 100,
                height: 100,
                child: Image.asset('assets/images/default-user.png'),
              )
            ],
          ),    drawerheader 다른 예시*/
          SizedBox(height: 30),
          ListTile(
            onTap: () =>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditPassword()),
            ),
            leading: Icon(Icons.account_circle),
            title: Text(
              '비밀번호 변경하기',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlertSetting()),
            ),
            leading: Icon(Icons.alarm),
            title: Text(
              '알림 설정하기',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyClubPage()),
            ),
            leading: Icon(Icons.favorite),
            title: Text(
              '나의 동아리 관리하기',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(
              '멤버 관리하기',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MemberManagement()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(
              '프로필 설정하기',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileSetting()),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushReplacementNamed(
              context,
              HomePage.route,
            ),
            leading: Icon(Icons.exit_to_app),
            title: Text(
              '로그아웃',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
