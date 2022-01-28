import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Masuk',
              style: TextStyle(
                  color: Color(0xFF676FA3), fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF676FA3),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color(0xFFEEF2FF),
        ),
        backgroundColor: Color(0xFFEEF2FF),
        body: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFDDDDDD),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60.0,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icon_phone.svg'),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('+62'),
                    SizedBox(
                      width: 5.0,
                    ),
                    SvgPicture.asset('assets/icon_divider2.svg'),
                    Expanded(
                      child: TextField(
                        // style: TextStyle(fontSize: 16.0),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: 'Masukkan nomor ponsel',
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
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFDDDDDD),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60.0,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icon_verif.svg'),
                    Expanded(
                      child: TextField(
                        // style: TextStyle(fontSize: 16.0),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: 'Kode verifikasi',
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
                    SvgPicture.asset('assets/icon_divider2.svg'),
                    SizedBox(
                      width: 5.0,
                    ),
                    TextButton(onPressed: () {}, child: Text('Kirim')),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFF5959),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: TextButton(
                child: Text(
                  'Masuk',
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
      ),
    );
  }
}
