// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/beranda.dart';
import 'package:pikstory/screens/misi.dart';
import 'package:pikstory/screens/saya.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void tapIndex(index) {
    setState(() {
      _controller.jumpToPage(index);
    });
  }

  PageController _controller = PageController();

  List<BottomNavigationBarItem> bottomNavList() {
    return [
      BottomNavigationBarItem(
        label: 'Beranda',
        icon: SvgPicture.asset(
          'assets/icon_beranda.svg',
          color: _currentIndex == 0 ? Color(0xFFFF5959) : Colors.grey[400],
        ),
      ),
      BottomNavigationBarItem(
        label: 'Misi',
        icon: SvgPicture.asset(
          'assets/icon_misi.svg',
          color: _currentIndex == 1 ? Color(0xFFFF5959) : Colors.grey[400],
        ),
      ),
      BottomNavigationBarItem(
        label: 'Saya',
        icon: SvgPicture.asset(
          'assets/icon_saya.svg',
          color: _currentIndex == 2 ? Color(0xFFFF5959) : Colors.grey[400],
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Beranda(),
              Misi(),
              Saya()
            ],
            onPageChanged: (page) {
              setState(() {
                _currentIndex = page;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              onTap: (index) {
                tapIndex(index);
              },
              currentIndex: _currentIndex,
              selectedItemColor: Color(0xFFFF5959),
              unselectedItemColor: Colors.grey[400],
              backgroundColor: Color(0xFFF0E6E6),
              items: bottomNavList(),
            ),
          ),
        ],
      ),
    );
  }
}
