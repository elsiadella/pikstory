import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/favorit.dart';
import 'package:pikstory/screens/settings.dart';
import 'package:pikstory/screens/tarik_saldo.dart';
import 'package:pikstory/screens/undang_teman.dart';

class Saya extends StatefulWidget {
  const Saya({Key? key}) : super(key: key);

  @override
  _SayaState createState() => _SayaState();
}

class _SayaState extends State<Saya> {
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
                padding: EdgeInsets.only(
                    right: 15.0, top: 15.0, left: 20.0, bottom: 15.0),
                height: 75.0,
                color: Color(0xFF676FA3),
                child: Row(
                  children: [
                    Image.asset('assets/image_profil.png'),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Elsi Adella',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_setting.svg'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Settings()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                children: [
                  Card(
                    child: ListTile(
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
                  ),
                  Card(
                    child: ListTile(
                      leading: SvgPicture.asset('assets/icon_favorit.svg'),
                      title: Text(
                        'Favorit',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFF323232),
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        splashRadius: 25.0,
                        icon: SvgPicture.asset('assets/icon_next.svg'),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Favorit()),
                        );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
