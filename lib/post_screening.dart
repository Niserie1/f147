import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ilan Bakma',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text('ilanlarda gezin'),
        ),
        body: ProfileContainer(),
        bottomNavigationBar: AnimatedBottomBar(
          currentIndex: 0,
          onTap: (index) {
           
            print('Tıklanan indeks: $index');
          },
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
          return false;
        }
        return true;
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfileCard(
              imagePath: 'assets/images/pets1.jpg',
              name: 'Hande A.',
              city: 'Ankara',
              description: 'Hayvanları çok severim. Evcil hayvanınıza günlük veya haftalık olarak sıcak bir yuva sağlayabilirim. ',
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 16.0),
            ProfileCard(
              imagePath: 'assets/images/pets2.jpg',
              name: 'Ömer C.',
              city: 'İstanbul',
              description: '2 senedir düzenli olarak köpek gezdiririm ve haftalık/aylık olarak geçici yuva olabilirim',
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String city;
  final String description;
  final Color backgroundColor;

  ProfileCard({
    required this.imagePath,
    required this.name,
    required this.city,
    required this.description,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: Colors.orange,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  city,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedBottomBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AnimatedBottomBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: Colors.orange,
      animationDuration: Duration(milliseconds: 300),
      onTap: widget.onTap,
      index: widget.currentIndex,
      items: [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(Icons.location_on_rounded, color: Colors.white),
        Icon(
          Icons.pets,
          color: Colors.white,
        ),
        Icon(Icons.chat_bubble, color: Colors.white),
        Icon(Icons.settings, color: Colors.white),
      ],
    );
  }
}
