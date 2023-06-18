import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/catphoto.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/dogphoto.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
