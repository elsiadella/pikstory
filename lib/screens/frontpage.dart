import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:image_stack/image_stack.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:pikstory/screens/how_to_login.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  List<String> imagesList = [
    'assets/imageslider1.png',
    'assets/imageslider1.png',
    'assets/imageslider1.png',
  ];

  List<String> titles = [
    ' Tren ',
    ' Olahraga ',
    ' Bisnis ',
  ];

  int _currentIndex = 0;

  List<String> images = [
    "assets/imagestack_1.png",
    "assets/imagestack_2.png",
    "assets/imagestack_3.png",
    "assets/imagestack_4.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF2FF),
      body: Column(
        children: [
          Stack(
            // alignment: AlignmentDirectional.bottomCenter,
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: double.infinity,
                  color: Color(0xFF676FA3),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50.0,
                      ),
                      Center(child: SvgPicture.asset('assets/icon_app.svg')),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Pilih kategori kesukaanmu',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 170,
                        width: double.infinity,
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            // enlargeCenterPage: true,
                            //scrollDirection: Axis.vertical,
                            onPageChanged: (index, reason) {
                              setState(
                                () {
                                  _currentIndex = index;
                                },
                              );
                            },
                          ),
                          items: imagesList
                              .map(
                                (item) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    // margin: EdgeInsets.only(
                                    //   top: 10.0,
                                    //   bottom: 10.0,
                                    // ),
                                    elevation: 6.0,
                                    shadowColor: Colors.redAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Image.asset(
                                            item,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                          ),
                                          Center(
                                            child: Text(
                                              '${titles[_currentIndex]}',
                                              style: TextStyle(
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                                backgroundColor: Colors.black45,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imagesList.map((urlOfItem) {
                          int index = imagesList.indexOf(urlOfItem);
                          return Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index
                                  ? Color.fromRGBO(0, 0, 0, 0.8)
                                  : Color.fromRGBO(0, 0, 0, 0.3),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Tekan tombol untuk mulai!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.68,
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/icon_button.svg'),
                    iconSize: 100.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HowtoLogin()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            // height: 100.0,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageStack(
                  imageSource: ImageSource.Asset,
                  imageList: images,
                  totalCount: images
                      .length, // If larger than images.length, will show extra empty circle
                  imageRadius: 40.0, // Radius of each images
                  imageCount:
                      3, // Maximum number of images to be shown in stack
                  imageBorderWidth: 3, // Border width around the images
                  imageBorderColor: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50.0,
                  child: Center(
                    child: AutoSizeText(
                      'Blmoon, A Alambry, Jungkook, dan 1 orang lainnya sudah bergabung',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF676FA3),
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.only(
                //       left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
                //   child: Text(
                //     'Blmoon, A Alambry, Jungkook, dan 1 orang lainnya sudah bergabung',
                //     style: TextStyle(
                //         color: Color(0xFF323232),
                //         fontWeight: FontWeight.normal,
                //         fontSize: 14.0),
                //     textAlign: TextAlign.center,
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Path path = Path();
    var path = Path();
    path.lineTo(0.0, size.height - 75);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 75);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
    // path.lineTo(0, size.height);
    // path.quadraticBezierTo(size.width/2, size.height * 0.75, size.width, size.height);
    // path.lineTo(size.width, 0);
    // path.close();

    // return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
