import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikstory/screens/login.dart';

class HowtoLogin extends StatefulWidget {
  const HowtoLogin({Key? key}) : super(key: key);

  @override
  _HowtoLoginState createState() => _HowtoLoginState();
}

class _HowtoLoginState extends State<HowtoLogin> {
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
                  color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFFFFFF),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color(0xFF676FA3),
        ),
        backgroundColor: Color(0xFFEEF2FF),
        body: Column(
          // alignment: AlignmentDirectional.bottomCenter,
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.infinity,
                color: Color(0xFF676FA3),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Center(child: SvgPicture.asset('assets/icon_app.svg')),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0),
                      padding:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50.0,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25.0),
                        splashColor: Colors.grey,
                        onTap: () {},
                        child: Stack(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SvgPicture.asset('assets/icon_google.svg'),
                            // SizedBox(width: 10.0),
                            Center(
                              child: Text(
                                'Masuk dengan Google',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20.0,
                    // ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0),
                      padding:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50.0,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25.0),
                        splashColor: Colors.grey,
                        onTap: () {},
                        child: Stack(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SvgPicture.asset('assets/icon_facebook.svg'),
                            // SizedBox(width: 10.0),
                            Center(
                              child: Text(
                                'Masuk dengan Facebook',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0),
                      padding:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50.0,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25.0),
                        splashColor: Colors.grey,
                        onTap: () {},
                        child: Stack(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SvgPicture.asset('assets/icon_apple.svg'),
                            // SizedBox(width: 10.0),
                            Center(
                              child: Text(
                                'Masuk dengan Apple',
                                style: TextStyle(
                                    color: Color(0xFF323232),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              // height: MediaQuery.of(context).size.height * 0.3,
              // margin: EdgeInsets.only(top: 50.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icon_phonesms.svg'),
                  SizedBox(
                    width: 10.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'Masuk dengan OTP',
                      style:
                          TextStyle(color: Color(0xFF676FA3), fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            )
          ],
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
    path.lineTo(0.0, size.height - 75);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 75);
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
