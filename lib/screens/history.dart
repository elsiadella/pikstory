// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/tarik_saldo.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'History',
              style: TextStyle(
                  color: Color(0xFFFF5959), fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFF5959),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 30.0,
              color: Color(0xFFFCEBF3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icon_mic.svg',
                    color: Color(0xFF676FA3),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Blmoon menarik Rp 224.800',
                    style: TextStyle(color: Color(0xFF676FA3)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icon_coin.svg'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('40.103',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xFF323232),
                                  fontWeight: FontWeight.w900)),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('Poin',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF323232),
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Text('Rp 200,51',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFFFF5959),
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Tariksaldo()),
                        );
                      },
                      child: Text(
                        'Tarik Saldo',
                        style: TextStyle(
                            color: Color(0xFFFF5959),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            // Divider(
            //   thickness: 0.5,
            //   color: Color(0xFFC4C4C4),
            // ),
            Expanded(
              child: ListView(
                // scrollDirection: Axis.vertical,
                // physics: ScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                    title: Text('Check-in', style: TextStyle(color: Color(0xFF323232)),),
                    subtitle: Text('12:32 06/01/22', style: TextStyle(color: Color(0xFFC4C4C4)),),
                    trailing: Text('+ 15.000', style: TextStyle(color: Color(0xFFF3CC30)),), 
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    title: Text('Membaca 1 artikel', style: TextStyle(color: Color(0xFF323232)),),
                    subtitle: Text('12:00 06/01/22', style: TextStyle(color: Color(0xFFC4C4C4)),),
                    trailing: Text('+ 3.000', style: TextStyle(color: Color(0xFFF3CC30)),), 
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    title: Text('Membaca 1 artikel', style: TextStyle(color: Color(0xFF323232)),),
                    subtitle: Text('12:00 06/01/22', style: TextStyle(color: Color(0xFFC4C4C4)),),
                    trailing: Text('+ 3.000', style: TextStyle(color: Color(0xFFF3CC30)),), 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
