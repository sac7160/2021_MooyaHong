import 'package:flutter/material.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('프로필 설정'),
      ),
      key: _scaffoldKey,
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Image(
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage('images/profilebackground.png'),
              ),
              Positioned(
                  bottom: 10,
                  child:
                      /*Image(
                  height: 120,
                  width: 120,
                  image: AssetImage('images/profile.jpg'),
                  fit: BoxFit.cover,
                ),*/
                      IconButton(
                    icon: Image.asset('images/profile.jpg'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileSetting()),
                      );
                    },
                    iconSize: 90,
                  )),
            ],
          ),
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('홍길등'),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('컴퓨터공학과'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('1학년'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.location_city),
                    title: Text('예시'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('예시'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
