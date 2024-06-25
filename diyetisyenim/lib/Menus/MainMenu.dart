import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../Animasyon.dart';
import '../Services/data.dart';
import 'AnaMenu.dart';
import 'ChatMenu.dart';
import 'KullaniciMenu.dart';


class MainMenu extends StatefulWidget {
  String email = "";

  MainMenu({
    required this.email,
  });

  @override
  State<MainMenu> createState() => _MainMenuState(email);
}

class _MainMenuState extends State<MainMenu> {
  String email = "";

  _MainMenuState(
       this.email,
      );

  int _selectedIndex =0 ;
  Map _kullanicilar = Map();


  Future<void>  _navigateBottomBar(int index) async  {
    setState(() {
      _selectedIndex = index;
    });

     if (_selectedIndex == 1) {
      Navigator.push(
        context,
        BouncyPageRoute(
          widget: ChatMenu( ),
        ));
    } else if (_selectedIndex == 2) {
      _kullanicilar = await kullaniciBilgileriGetir(email);
      Navigator.push(
        context,
          MaterialPageRoute(
          builder: (context) => KullaniciMenu( kullanici: _kullanicilar,)));
    }
  }

  @override
  var ekran;
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnaMenu(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.chat,
                  text: 'Chats',
                ),
                GButton(
                  icon: Icons.supervised_user_circle,
                  text: 'Profile',
                ),
              ],
              onTabChange: _navigateBottomBar
            ),

          ),
        ),
      ),
    );
  }

}
  

