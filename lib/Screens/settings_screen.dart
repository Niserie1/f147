import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:profildenemesi/Screens/Profile_screen.dart';
import 'package:profildenemesi/Screens/edit_profile.dart';
import 'package:profildenemesi/Screens/settings_screen_tile.dart';
import '../bottombar.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _currentIndex = 0; // Add this line to keep track of the current index

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Add logic here if you want to handle tap events
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
      ),
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:20, vertical: 10 ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  SettingsTile(
                    color: Colors.purple,
                    icon: Ionicons.person_circle_outline,
                    title: 'Profili Düzenle',
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
                    );},),
                  SizedBox(height: 10),
                  SettingsTile(
                      color: Colors.green,
                      icon: Ionicons.lock_closed_outline,
                      title: 'Şifre Değiştir',
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
                      );},),
                  SizedBox(height: 10),
                  SettingsTile(
                      color: Colors.red,
                      icon: Ionicons.log_in_outline,
                      title: 'Çıkış yap',
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
                      );},),
                  SizedBox(height: 10),
              ],
             ),
            ),
        ),
      bottomNavigationBar: AnimatedBottomBar(
        currentIndex: _currentIndex, // Pass the current index
        onTap: _onItemTapped, // Pass the onTap function
      ),
    );
  }
}

