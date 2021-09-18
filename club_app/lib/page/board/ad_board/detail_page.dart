import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Apply_page.dart';
//to do!! detail page custom 

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key,required this.index}) : super(key: key);
  final int index;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // final clubimages = ['assets/images/1.jpeg',"assets/images/2.jpeg","assets/images/3.jpeg","assets/images/4.jpeg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd9e0e3),
      appBar: AppBar(
        backgroundColor:Color(0xffd9e0e3),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: buildFotoProducSlider()),
          SizedBox(
            height: 40,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                buildSeller(),
                buildInfoProduct(),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Positioned buildInfoProduct() {
    return Positioned(
      top: -75,
      left: 20,
      right: 20,
      child: Card(
        shadowColor:Color(0xFFF5CEB8).withOpacity(0.3),
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '책아띠',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        '모집중',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22,color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('2021.09.16~2021.10.15'),
                  Text('#독서 #독서토론 #토론 #연합 #연합동아리'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('대학생 연합 독서 토론 동아리 책아띠에서 20기 신입회원을 모집합니다!'),
                ],
              ),
            )),
      ),
    );
  }

  int _current = 0;
  final CarouselController _controller = CarouselController();

  Widget buildFotoProducSlider() {
    return Hero(
      tag: widget.index,
      child: Material(
        type: MaterialType.transparency,
        child: CarouselSlider(
          items: 
          // Image.network(clubimages),
            [
              Image.asset("assets/images/1.jpeg"),
              Image.asset("assets/images/2.jpeg"),
              Image.asset("assets/images/3.jpeg"),
              Image.asset("assets/images/4.jpeg"),
              Image.asset("assets/images/5.jpeg"),
              Image.asset("assets/images/6.jpeg"),
              Image.asset("assets/images/7.jpeg"),
              Image.asset("assets/images/8.jpeg"),
              Image.asset("assets/images/9.jpeg"),
              Image.asset("assets/images/10.jpeg"),
          ],
          //이칸에 동아리 홍보 사진이 들어가야 하는데 ,,, ㅠ
          carouselController: _controller,
          options: CarouselOptions(
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
    );
  }

  SizedBox buildSeller() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(flex: 2, child: SizedBox()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.grey[800],
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '책아띠',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Jeon jisu | Posted 3 Days ago'),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Bio ',
                        ),
                        Text(
                            '1차 지원 모집 마감기한은 10.15일까지입니다 많은 지원 부탁드려요~',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xfff5efef),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Expanded(
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //         primary: Color(0xff447070)),
                    //     child: Padding(
                    //       padding: const EdgeInsets.symmetric(vertical: 14),
                    //       child: Icon(
                    //         Icons.bookmark_border,
                    //         size: 24,
                    //       ),
                    //     ),
                    //     onPressed: () {},
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 20,
                    // ), 북마크 기능도 괜찮은 것같지만 일단 보류.
                    Expanded(
                      flex: 5,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red[300]),
                        onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return JoinPage();
                              }),
                            );},
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Apply'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
