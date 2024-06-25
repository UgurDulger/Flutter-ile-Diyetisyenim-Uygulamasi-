import 'package:diyetisyenim/Menus/MainMenu.dart';
import 'package:flutter/material.dart';
import 'package:icon_forest/amazingneoicons.dart';

import '../Services/auth.dart';


class DiyetMenu extends StatefulWidget {
  String email = "";

  DiyetMenu({
    required this.email,
  });

  @override
  _DiyetMenustate createState() => _DiyetMenustate(email);
}


class _DiyetMenustate extends State<DiyetMenu > {
  String email = "";

  _DiyetMenustate(
      this.email,
      );

  final TextEditingController _kilokontrol = TextEditingController();
  final TextEditingController _boykontrol = TextEditingController();
  final TextEditingController _yaskontrol = TextEditingController();

  AuthServis _authServis = AuthServis();

  Widget buildKiloKontrol() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Kilo',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            controller: _kilokontrol,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  AmazingNeoIcons.airplane,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Kilo',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
    );
  }
  Widget buildYasKontrol() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Yaş',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            controller: _yaskontrol,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  AmazingNeoIcons.airplane,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Yaş',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
    );
  }
  Widget buildBoyKontrol() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Boy',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            controller: _boykontrol,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  AmazingNeoIcons.airplane,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Boy',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
    );
  }
  Widget buildHesaplaBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          _authServis
              .EkleVeri(int.parse(_boykontrol.text), int.parse(_kilokontrol.text),
              int.parse(_yaskontrol.text))
              .then((value) {
            return Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainMenu(email: email)));
          });
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Text(
          'Hesapla',
          style: TextStyle(
              color: Color(0xff5ac18e),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text('anamenu'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x665ac18e),
                        Color(0x995ac18e),
                        Color(0xcc5ac18e),
                        Color(0xff5ac18e),
                      ])),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30),
                      buildKiloKontrol(),
                      SizedBox(height: 30),
                      buildBoyKontrol(),
                      SizedBox(height: 30),
                      buildYasKontrol(),
                      SizedBox(height: 30),
                      buildHesaplaBtn()

                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}