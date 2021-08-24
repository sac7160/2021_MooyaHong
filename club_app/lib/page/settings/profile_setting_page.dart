import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  File? image;

  Future pickImage(ImageSource source) async {

    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return ;
      
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on Exception catch (e) {
      print ('이미지 설정 실패: $e');
      //todo
    }


  }

  List<XFile>? _imageFileList;
  set _imageFile(XFile? value) {
    _imageFileList = value == null ? null : [value];
  }
  

  final ImagePicker _picker = ImagePicker();

  Future _getImage() async{
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if(pickedFile != null){
        _imageFile = XFile(pickedFile.path);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
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
                
                      IconButton(
                    icon: Image.asset('images/profile.jpg'),
                    onPressed: () {
                      _getImage();
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
}*/
  return Scaffold(
    backgroundColor: Colors.amber.shade300,
    body: Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Spacer(),
          image != null 
              ? ClipOval(
                    child: Image.file(
                      image!,
                      width: 160,
                      height: 160,
                      fit: BoxFit.cover,
              ),
              )
              : FlutterLogo(size: 160),
          const SizedBox(height: 24),
          Text('Text'),
          TextButton(
            child: Text( 'pick Gallery'),
            onPressed: () => pickImage(ImageSource.gallery),
          )
        ],
      )
    ),

  );
  }}