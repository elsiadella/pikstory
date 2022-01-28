import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Editprofil extends StatefulWidget {
  const Editprofil({Key? key}) : super(key: key);

  @override
  _EditprofilState createState() => _EditprofilState();
}

class _EditprofilState extends State<Editprofil> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Edit Profil',
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                padding: EdgeInsets.all(8.0),
                children: [
                  ListTile(
                    title: Text(
                      'Avatar',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
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
                    title: Text(
                      'Nama Lengkap',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
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
                    title: Text(
                      'Jenis Kelamin',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      splashRadius: 25.0,
                      icon: SvgPicture.asset('assets/icon_next.svg'),
                      onPressed: () {},
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
