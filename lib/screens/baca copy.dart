// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Baca extends StatefulWidget {
  const Baca({Key? key}) : super(key: key);

  @override
  _BacaState createState() => _BacaState();
}

class _BacaState extends State<Baca> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset('assets/image_profil2.png'),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'Kompas.com',
                style: TextStyle(color: Color(0xFF323232), fontSize: 14.0),
              ),
            ],
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      padding: EdgeInsets.all(8.0),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: Text(
                            'Ayo Bantu Anak Meraih Mimpinya',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF323232),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
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
                                    color: Color(0xFF323232), fontSize: 12.0),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '12:55 WIB',
                                style: TextStyle(
                                    color: Color(0xFF323232), fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/image_2.png'),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: Text(
                            'Kompas.com - Setiap orang pasti memiliki mimpi mulai dari anak-anak hingga dewasa. Tidak sedikit dari mereka yang berhasil meraih apa yang mereka mimpikan. Tidak harus hal besar, hal sederhana juga termasuk mimpi loh. Sebagai orang tua atau orang dewasa pasti berharap anaknya kelak dapat meraih mimpi mereka. Ada beberapa cara yang dapat kamu lakukan sebagai orang tua yaitu bantu anak untuk meraih mimpi.',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xFF323232),
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      // height: 5.0,
                      thickness: 5,
                      color: Color(0xFFC4C4C4),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icon_divider.svg'),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Rekomendasi Artikel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323232),
                                fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      padding: EdgeInsets.all(8.0),
                      children: [
                        ListTile(
                          title: Text(
                            '6 Ide Bisnis Rumahan Untuk Anak Muda',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF323232),
                                fontWeight: FontWeight.normal),
                          ),
                          trailing: Image.asset('assets/image_3.png'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          title: Text(
                            '6 Ide Bisnis Rumahan Untuk Anak Muda',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF323232),
                                fontWeight: FontWeight.normal),
                          ),
                          trailing: Image.asset('assets/image_3.png'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          title: Text(
                            '6 Ide Bisnis Rumahan Untuk Anak Muda',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF323232),
                                fontWeight: FontWeight.normal),
                          ),
                          trailing: Image.asset('assets/image_3.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: 50.0,
                  color: Color(0xFFF0E6E6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
