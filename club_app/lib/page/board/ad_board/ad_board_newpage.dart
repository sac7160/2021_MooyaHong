import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../search_bar.dart';
import 'category_card.dart';
import 'detail_page.dart';


class AdBoardPagenew extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Club App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Club advertise Board ",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  SearchBar(),
                  Expanded(
                    child: 
                      GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "책아띠",
                          svgSrc: "assets/svg/1.svg",
                          press: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 1,);
                              }),
                            );},
                        ),
                        CategoryCard(
                          title: "royalblack",
                          svgSrc: "assets/svg/2.svg",
                          press: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 2);
                              }),
                            );},
                        ),
                        CategoryCard(
                          title: "BITA",
                          svgSrc: "assets/svg/3.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 3);
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "signal",
                          svgSrc: "assets/svg/4.svg",
                          press: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(index: 4);
                              }),
                            );},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
