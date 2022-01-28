// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/beranda.dart';
import 'package:pikstory/screens/history.dart';
import 'package:pikstory/screens/tarik_saldo.dart';
import 'package:pikstory/screens/undang_teman.dart';

class Misi extends StatefulWidget {
  const Misi({Key? key}) : super(key: key);

  @override
  _MisiState createState() => _MisiState();
}

class _MisiState extends State<Misi> {
  showPopUp(BuildContext context, bool strict, bool isForm, Function? funct,
      String title, String? yesText, String cancelText, bool isArtikel) async {
    TextEditingController outsideController = TextEditingController();

    return await showGeneralDialog(
      transitionDuration: Duration(milliseconds: 150),
      barrierLabel: '',
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Transform.scale(
              scale: a1.value,
              child: Opacity(
                opacity: a1.value,
                child: Center(
                  child: Material(
                    type: MaterialType.transparency,
                    color: Colors.transparent,
                    child: Container(
                      // padding: EdgeInsets.all(20),
                      constraints: BoxConstraints(maxWidth: 300, minWidth: 100),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Image.asset('assets/image_popup.png'),
                                Text(
                                  'Detail Tugas',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  bottom: 20.0,
                                  top: 20.0),
                              child: Text(
                                'Buka notifikasi PIK STORY, Klik dan baca berita. Kemudian klain hadiahnya.',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 20.0),
                              width: 150,
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFFFF5959),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      context: context,
      pageBuilder: (context, a1, a2) {
        return Container();
      },
    );
  }

  showPopUp2(BuildContext context, bool strict, bool isForm, Function? funct,
      String title, String? yesText, String cancelText, bool isArtikel) async {
    TextEditingController outsideController = TextEditingController();

    return await showGeneralDialog(
      transitionDuration: Duration(milliseconds: 150),
      barrierLabel: '',
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Transform.scale(
              scale: a1.value,
              child: Opacity(
                opacity: a1.value,
                child: Center(
                  child: Material(
                    type: MaterialType.transparency,
                    color: Colors.transparent,
                    child: Container(
                      // padding: EdgeInsets.all(20),
                      constraints: BoxConstraints(maxWidth: 300, minWidth: 100),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Image.asset('assets/image_popup.png'),
                                Text(
                                  'Hadiah Undangan',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 20.0),
                              child: Text(
                                'Undang teman dapatkan',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 20.0),
                              child: Text(
                                'Rp 350.000',
                                style: TextStyle(
                                    color: Color(0xFFFF0000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 20.0),
                              width: 150,
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFFFF5959),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Undangteman()),
                                  );
                                },
                                child: Text(
                                  "Segera Undang",
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      context: context,
      pageBuilder: (context, a1, a2) {
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    right: 15.0, left: 15.0, top: 15.0, bottom: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Misi',
                      style: TextStyle(
                          color: Color(0xFFFF5959),
                          fontWeight: FontWeight.w900,
                          fontSize: 30.0),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_history.svg'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 15.0, bottom: 10.0),
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
                    IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Tariksaldo()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 15.0, bottom: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Undang Teman',
                      style: TextStyle(
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      color: Color(0xFFCDDEFF),
                      child: Text(
                        'Rp 1.000.000',
                        style: TextStyle(
                            color: Color(0xFF676FA3),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {
                        showPopUp2(
                            context,
                            false,
                            false,
                            () => print('function clicked'),
                            'title',
                            'yes',
                            'cancel',
                            false);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width * 0.40,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF2FF),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah Undangan',
                                style: TextStyle(color: Color(0xFFC4C4C4)),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset('assets/icon_invited.svg'),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width * 0.40,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF2FF),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pendapatan',
                                style: TextStyle(color: Color(0xFFC4C4C4)),
                              ),
                              Text(
                                'Rp 1.000',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset('assets/icon_hadiah.svg'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tugas Harian',
                      style: TextStyle(
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                children: [
                  ListTile(
                    leading: SvgPicture.asset('assets/icon_whatsapp.svg'),
                    title: Text(
                      'Bagikan ke Whatsapp',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        SvgPicture.asset('assets/icon_coin2.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '1000 - 5000 Poin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676FA3)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {},
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icon_fb.svg'),
                    title: Text(
                      'Bagikan ke Facebook',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        SvgPicture.asset('assets/icon_coin2.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '3000 - 5000 Poin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676FA3)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {},
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icon_artikel1.svg'),
                    title: Text(
                      'Baca 1 Artikel',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        SvgPicture.asset('assets/icon_coin2.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '3000 - 5000 Poin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676FA3)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Beranda()),
                        );
                      },
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icon_artikel2.svg'),
                    title: Text(
                      'Baca 1 Artikel dari Notifikasi',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        SvgPicture.asset('assets/icon_coin2.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '3000 - 7000 Poin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676FA3)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {
                        showPopUp(
                            context,
                            false,
                            false,
                            () => print('function clicked'),
                            'title',
                            'yes',
                            'cancel',
                            false);
                      },
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icon_artikel2.svg'),
                    title: Text(
                      'Baca 3 Artikel dari Notifikasi',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        SvgPicture.asset('assets/icon_coin2.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '3000 - 7000 Poin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676FA3)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {
                        showPopUp(
                            context,
                            false,
                            false,
                            () => print('function clicked'),
                            'title',
                            'yes',
                            'cancel',
                            false);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hadiah Lainnya',
                      style: TextStyle(
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                children: [
                  ListTile(
                    leading: SvgPicture.asset('assets/icon_invited2.svg'),
                    title: Text(
                      'Undang Teman',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        SvgPicture.asset('assets/icon_dompet.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Rp 1.000.000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676FA3)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {
                        showPopUp2(
                            context,
                            false,
                            false,
                            () => print('function clicked'),
                            'title',
                            'yes',
                            'cancel',
                            false);
                      },
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icon_artikel2.svg'),
                    title: Text(
                      'Baca untuk mendapatkan poin',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        SvgPicture.asset('assets/icon_coin2.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '3000 - 5000 Poin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676FA3)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Beranda()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
