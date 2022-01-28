// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/edit_profil.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Pengaturan',
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
                      'Nomor Telepon',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '081534343353',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color(0xFFC4C4C4)),
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    title: Text(
                      'Akun Facebook',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'Berhasil ditautkan',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color(0xFFC4C4C4)),
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    title: Text(
                      'Edit Profil',
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
                          MaterialPageRoute(builder: (context) => Editprofil()),
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
                    title: Text(
                      'Ukuran Font',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'Sedang',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color(0xFFC4C4C4)),
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                   ListTile(
                    title: Text(
                      'Versi',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '1.0.0',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color(0xFFC4C4C4)),
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                   ListTile(
                    title: Text(
                      'Hapus Cache',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF323232),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '148 MB',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color(0xFFC4C4C4)),
                    ),
                  ),
                  Divider(
                    // height: 1.0,
                    thickness: 0.5,
                    color: Color(0xFFC4C4C4),
                  ),
                  ListTile(
                    title: Text(
                      'Ketentuan Pengguna',
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
              SizedBox(height: 10.0,),
              Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0,),
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: TextButton(
                    child: Text(
                      'Keluar',
                      style: TextStyle(color: Color(0xFF323232), fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
