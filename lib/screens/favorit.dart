import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favorit extends StatefulWidget {
  const Favorit({Key? key}) : super(key: key);

  @override
  _FavoritState createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Favorit',
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
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: Text(
                  'Edit',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF5959)),
                )),
            SizedBox(
              width: 10.0,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 7.0, bottom: 10.0),
                    child: Text(
                      'Ayo Bantu Anak Meraih Mimpinya',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(child: Image.asset('assets/image_2.png')),
                  Container(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      children: [
                        Image.asset('assets/image_profil3.png'),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Kompas.com',
                          style: TextStyle(
                              color: Color(0xFF323232), fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '29/11/2021',
                          style: TextStyle(
                              color: Color(0xFFC4C4C4), fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '23 Suka',
                              style: TextStyle(
                                  fontSize: 12.0, color: Color(0xFFC4C4C4)),
                            )),
                      ],
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 7.0, bottom: 10.0),
                    child: Text(
                      'Ayo Bantu Anak Meraih Mimpinya',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(child: Image.asset('assets/image_2.png')),
                  Container(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      children: [
                        Image.asset('assets/image_profil3.png'),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Kompas.com',
                          style: TextStyle(
                              color: Color(0xFF323232), fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '29/11/2021',
                          style: TextStyle(
                              color: Color(0xFFC4C4C4), fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '23 Suka',
                              style: TextStyle(
                                  fontSize: 12.0, color: Color(0xFFC4C4C4)),
                            )),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
