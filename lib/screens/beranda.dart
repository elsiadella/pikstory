// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/baca.dart';
import 'package:pikstory/screens/checkin_page.dart';
import 'package:pikstory/screens/frontpage.dart';
import 'package:pikstory/screens/how_to_login.dart';
import 'package:pikstory/screens/login.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  // List<String> widgetList = [
  //   'assets/image_4.png',
  //   'assets/image_4.png',
  //   'assets/image_4.png',
  //   'assets/image_4.png',
  //   'assets/image_4.png'
  // ];
  // List<String> titleList = [
  //   'Ayo Bantu Anak untuk Meraih Mimpinya',
  //   'Ayo Bantu Anak untuk Meraih Mimpinya',
  //   'Ayo Bantu Anak untuk Meraih Mimpinya',
  //   'Ayo Bantu Anak untuk Meraih Mimpinya',
  //   'Ayo Bantu Anak untuk Meraih Mimpinya',
  // ];
  // List<String> avaList = [
  //   'assets/image_profil2.png',
  //   'assets/image_profil2.png',
  //   'assets/image_profil2.png',
  //   'assets/image_profil2.png',
  //   'assets/image_profil2.png',
  // ];
  // List<String> userList = [
  //   'Kompas.com',
  //   'Kompas.com',
  //   'Kompas.com',
  //   'Kompas.com',
  //   'Kompas.com',
  // ];
  // List<String> likesList = [
  //   '113',
  //   '114',
  //   '115',
  //   '116',
  //   '117',
  // ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_rate.svg'),
                      onPressed: () {},
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFCCCCCC),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextField(
                              // style: TextStyle(fontSize: 16.0),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                hintText: 'search...',
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            splashRadius: 25.0,
                            // icon:
                            // Icon(Icons.search_sharp, color: Color(0xFF242B32)),
                            icon: SvgPicture.asset('assets/icon_search.svg'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_checkin.svg'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Checkin()),
                        );
                      },
                    ),
                  ],
                ),
                // ignore: prefer_const_literals_to_create_immutables
                TabBar(
                  isScrollable: true,
                  indicatorColor: Color(0xFFFF5959),
                  indicatorSize: TabBarIndicatorSize.label,
                  dragStartBehavior: DragStartBehavior.start,
                  physics: ScrollPhysics(),
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  labelColor: Color(0xFFFF5959),
                  unselectedLabelColor: Color(
                      0xFFC4C4C4), // ignore: prefer_const_literals_to_create_immutables
                  // ignore: prefer_const_literals_to_create_immutables
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      child: Text('Untuk Anda'),
                    ),
                    Tab(
                      child: Text('Tren'),
                    ),
                    Tab(
                      child: Text('Sosial'),
                    ),
                    Tab(
                      child: Text('Ekonomi'),
                    ),
                    Tab(
                      child: Text('Bisnis'),
                    ),
                    Tab(
                      child: Text('Olahraga'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    physics: ScrollPhysics(),
                    children: [
                      GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: (3 / 4),
                        
                        controller:
                            new ScrollController(keepScrollOffset: false),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                // scale: 10.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image_4.png'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Baca()),
                                    );
                                  },
                                  child: Text(
                                    'Ayo Bantu Anak Untuk Meraih Mimpinya',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/image_profil2.png'),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        'Kompas.com',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                      // Spacer(
                                      //   flex: 3,
                                      // ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            'assets/icon_like3.svg'),
                                      ),
                                      Text(
                                        '113',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                // scale: 10.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image_4.png'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Baca()),
                                    );
                                  },
                                  child: Text(
                                    'Ayo Bantu Anak Untuk Meraih Mimpinya',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/image_profil2.png'),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        'Kompas.com',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                      // Spacer(
                                      //   flex: 3,
                                      // ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            'assets/icon_like3.svg'),
                                      ),
                                      Text(
                                        '113',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                // scale: 10.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image_4.png'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Baca()),
                                    );
                                  },
                                  child: Text(
                                    'Ayo Bantu Anak Untuk Meraih Mimpinya',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/image_profil2.png'),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        'Kompas.com',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                      // Spacer(
                                      //   flex: 3,
                                      // ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            'assets/icon_like3.svg'),
                                      ),
                                      Text(
                                        '113',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                // scale: 10.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image_4.png'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Baca()),
                                    );
                                  },
                                  child: Text(
                                    'Ayo Bantu Anak Untuk Meraih Mimpinya',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/image_profil2.png'),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        'Kompas.com',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                      // Spacer(
                                      //   flex: 3,
                                      // ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            'assets/icon_like3.svg'),
                                      ),
                                      Text(
                                        '113',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                // scale: 10.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image_4.png'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Baca()),
                                    );
                                  },
                                  child: Text(
                                    'Ayo Bantu Anak Untuk Meraih Mimpinya',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/image_profil2.png'),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        'Kompas.com',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                      // Spacer(
                                      //   flex: 3,
                                      // ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            'assets/icon_like3.svg'),
                                      ),
                                      Text(
                                        '113',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                // scale: 10.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image_4.png'),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Baca()),
                                    );
                                  },
                                  child: Text(
                                    'Ayo Bantu Anak Untuk Meraih Mimpinya',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/image_profil2.png'),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        'Kompas.com',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                      // Spacer(
                                      //   flex: 3,
                                      // ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                            'assets/icon_like3.svg'),
                                      ),
                                      Text(
                                        '113',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 100.0,)
                        ],
                        // children: widgetList.map((String value) {
                        //   // ignore: unnecessary_new
                        //   return new Container(
                        //     decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //         // scale: 10.0,
                        //         fit: BoxFit.cover,
                        //         image: AssetImage(value),
                        //       ),
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(15.0)),
                        //       color: Colors.white,
                        //     ),
                        //     // color: Colors.green,
                        //     margin: new EdgeInsets.all(5.0),

                        //     // child: new Center(
                        //     //   child: new Text(
                        //     //     value,
                        //     //     style: new TextStyle(
                        //     //       fontSize: 50.0,
                        //     //       color: Colors.white,
                        //     //     ),
                        //     //   ),
                        //   );
                        // }).toList(),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Frontpage()),
                            );
                          },
                          icon: Icon(Icons.ac_unit)),
                      Text("c"),
                      Text("d"),
                      Text("e"),
                      Text("f"),
                    ],
                  ),
                ),

                // IconButton(
                //     onPressed: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Login()),
                //       );
                //     },
                //     icon: Icon(Icons.ac_unit)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
