import 'package:flutter/material.dart';
import 'package:icon_forest/amazingneoicons.dart';
import 'package:icon_forest/icon_forest.dart';


class AnaMenu extends StatefulWidget {


  @override
  _AnaMenustate createState() => _AnaMenustate();
}


class _AnaMenustate extends State<AnaMenu> {


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