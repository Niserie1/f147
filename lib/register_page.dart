import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register Page',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("happytails\'e kayıt ol"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/imagesss/petsiconn.png',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            TextFormField(
              controller: _firstNameController,
              decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
             hintText: "Adı",
             border:
             OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
            ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _lastNameController,
              decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Soyadı",
              border:
             OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
            ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
                decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
             hintText: "E-mail Adresi",
             border:
             OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
                decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
             hintText: "Parola",
             border:
             OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _confirmPasswordController,
                decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
             hintText: "Parola Tekrar",
             border:
             OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),

            
            ElevatedButton(   
            onPressed: () {
              },  
            child: Text('Kayıt Ol!'),
            ),
          ],
        ),
      ),
    );

    
  }
}

