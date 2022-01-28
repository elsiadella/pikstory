// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tariksaldo extends StatefulWidget {
  const Tariksaldo({Key? key}) : super(key: key);

  @override
  _TariksaldoState createState() => _TariksaldoState();
}

class _TariksaldoState extends State<Tariksaldo> {
  String dropdownvalue = 'none';

  var items = [
    'none',
    'Bank BCA',
    'Bank BNI',
    'Bank BRI',
    'Bank Mandiri',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Tarik Saldo',
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
                  height: 150.0,
                  width: double.infinity,
                  color: Color(0xFF676FA3),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10.0, bottom: 5.0),
                        child: Row(
                          children: [
                            Text(
                              'Dapat ditukar:',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            Spacer(
                              flex: 3,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Riwayat Penarikan',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(bottom: 10.0),
                        height: 60.0,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      ),
                    ],
                  ),
                ),
                TabBar(
                  // isScrollable: true,
                  indicatorColor: Color(0xFF323232),
                  indicatorSize: TabBarIndicatorSize.label,
                  // dragStartBehavior: DragStartBehavior.start,
                  // physics: ScrollPhysics(),
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  labelColor: Color(0xFF323232),
                  unselectedLabelColor: Color(
                      0xFFC4C4C4), // ignore: prefer_const_literals_to_create_immutables
                  // ignore: prefer_const_literals_to_create_immutables
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0),
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/image_dana.png'),
                          Text(
                            'DANA',
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Center(child: Text('BANK')),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 500.0,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 20.0, top: 25.0, bottom: 20.0),
                            child: Row(
                              children: [
                                Image.asset('assets/image_dana2.png'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rp 224.800',
                                      style: TextStyle(
                                          color: Color(0xFF323232),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Tukar dengan 50.000.000 Poin',
                                      style: TextStyle(
                                          color: Color(0xFF323232),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 20.0, right: 10.0),
                                // padding: EdgeInsets.symmetric(
                                //   horizontal: 15.0,
                                //   vertical: 5.0,
                                // ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFCEBF3),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextButton(
                                  child: Text(
                                    '224.800',
                                    style: TextStyle(
                                        color: Color(0xFFFF5959),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              // SizedBox(width: 10.0,),
                              Container(
                                // margin: EdgeInsets.only(left: 20.0, right: 20.0),
                                // padding: EdgeInsets.symmetric(
                                //   horizontal: 15.0,
                                //   vertical: 5.0,
                                // ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextButton(
                                  child: Text(
                                    '449.600',
                                    style: TextStyle(
                                        color: Color(0xFF323232),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFDDDDDD),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 60.0,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset('assets/icon_phone.svg'),
                                SizedBox(
                                  width: 5.0,
                                ),
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
                          SizedBox(height: 10.0),
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
                                'Konfirmasi Penarikan',
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rp 224.800',
                                  style: TextStyle(
                                      color: Color(0xFF323232),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Tukar dengan 50.000.000 Poin',
                                  style: TextStyle(
                                      color: Color(0xFF323232),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 20.0, right: 10.0),
                                // padding: EdgeInsets.symmetric(
                                //   horizontal: 15.0,
                                //   vertical: 5.0,
                                // ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFCEBF3),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextButton(
                                  child: Text(
                                    '224.800',
                                    style: TextStyle(
                                        color: Color(0xFFFF5959),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              // SizedBox(width: 10.0,),
                              Container(
                                // margin: EdgeInsets.only(left: 20.0, right: 20.0),
                                // padding: EdgeInsets.symmetric(
                                //   horizontal: 15.0,
                                //   vertical: 5.0,
                                // ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextButton(
                                  child: Text(
                                    '449.600',
                                    style: TextStyle(
                                        color: Color(0xFF323232),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Masukkan nama penerima',
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Masukkan nama akun bank',
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Masukkan nomor telepon',
                                  ),
                                ),
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pilih Bank',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF323232),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Spacer(flex: 3,),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 20.0, top: 5.0),
                                      child: DropdownButton(
                                        // isExpanded: true,
                                        // Initial Value
                                        value: dropdownvalue,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Color(0xFF323232),
                                            fontWeight: FontWeight.normal),
                                        // Down Arrow Icon
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Color(0xFF323232),
                                        ),

                                        // Array list of items
                                        items: items.map((String items) {
                                          return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                          );
                                        }).toList(),
                                        // After selecting the desired option,it will
                                        // change button value to selected value
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownvalue = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.0),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
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
                                        'Konfirmasi Penarikan',
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),

                                // DropDownField(
                                //   controller: bankSelected,
                                //   hintText: "Pilih bank",
                                //   enabled: true,
                                //   items: bank,
                                //   itemsVisibleInDropdown: 4,
                                //   onValueChanged: (value)
                                //   {
                                //     setState(() {
                                //       selectBank = value;
                                //     });
                                //   },
                                // ),
                                // DropdownButton(
                                //   // Initial Value
                                //   value: dropdownvalue,
                                //   style: TextStyle(
                                //       fontSize: 14.0,
                                //       color: Color(0xFFCCCCCC),
                                //       fontWeight: FontWeight.bold),
                                //   // Down Arrow Icon
                                //   icon: const Icon(
                                //     Icons.keyboard_arrow_down,
                                //     color: Color(0xFFFF6212),
                                //   ),

                                //   // Array list of items
                                //   items: items.map((String items) {
                                //     return DropdownMenuItem(
                                //       value: items,
                                //       child: Text(items),
                                //     );
                                //   }).toList(),
                                //   // After selecting the desired option,it will
                                //   // change button value to selected value
                                //   onChanged: (String? newValue) {
                                //     setState(() {
                                //       dropdownvalue = newValue!;
                                //     });
                                //   },
                                // ),
                              ],
                            ),
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
      ),
    );
  }
}
