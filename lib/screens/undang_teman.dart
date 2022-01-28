// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/tarik_saldo.dart';

class Undangteman extends StatefulWidget {
  const Undangteman({Key? key}) : super(key: key);

  @override
  _UndangtemanState createState() => _UndangtemanState();
}

class _UndangtemanState extends State<Undangteman> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFFF5959), Colors.white],
  ).createShader(
    Rect.fromLTWH(100.0, 0.0, 200.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFFFFFF),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color(0xFF676FA3),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper1(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.560,
                      width: double.infinity,
                      color: Color(0xFFFF5959),
                    ),
                  ),
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.550,
                      width: double.infinity,
                      color: Color(0xFF676FA3),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Dapatkan hingga',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 350.000',
                            style: TextStyle(
                                fontSize: 30.0,
                                // color: Colors.white,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..shader = linearGradient),
                          ),
                          Text(
                            'karena mengundang teman',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            // width: 50.0,
                            padding: EdgeInsets.only(left: 20.0),
                            height: 100.0,
                            // color: Color(0xFF676FA3),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv1.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv2.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv3.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv4.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv5.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv6.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv7.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv8.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv9.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 5.0, bottom: 5.0),
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border(
                                        top: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Color(0xFFFF5959),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => Abstract()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icon_inv10.svg'),
                                          SizedBox(
                                            height: 15.0,
                                          ),
                                          Text(
                                            'Rp 35.000',
                                            style: TextStyle(
                                                color: Color(0xFFFF5959),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25.0, right: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  'Kode Undangan :',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'F2F3DZA',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      SvgPicture.asset('assets/icon_copy.svg'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0, right: 20.0),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 5.0,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFFF5959),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextButton(
                              child: Text(
                                'Undang',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 10.0, bottom: 10.0),
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
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                // height: 5.0,
                thickness: 5,
                color: Color(0xFFC4C4C4),
              ),
              Container(
                margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
                child: Text(
                  'Masukkan kode undangan dan dapatkan hadiahnya',
                  style: TextStyle(
                      color: Color(0xFF323232),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0),
                child: Text(
                  'Hanya berlaku untuk pengguna baru',
                  style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0),
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDDDDDD),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    margin: EdgeInsets.only(left: 25.0, right: 10.0),
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: 60.0,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            // style: TextStyle(fontSize: 16.0),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: 'Kode undangan',
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
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF5959),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextButton(
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 75.0,
                width: double.infinity,
                color: Color(0xFFDDDDDD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dengan berpartisipasi dalam aktivitas hadiah,'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Anda menyetujui',
                          style: TextStyle(color: Color(0xFF323232)),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Syarat dan Ketentuan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF323232)),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'kami.',
                          style: TextStyle(color: Color(0xFF323232)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Path path = Path();
    var path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 50);
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

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Path path = Path();
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
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
