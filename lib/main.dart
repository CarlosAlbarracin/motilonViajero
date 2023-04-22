import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'login/splash_screen.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Color _primaryColor = HexColor('#000000');
  final Color _accentColor = HexColor('#A71111');
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         title: 'Flutter Demo',
      theme: ThemeData(
      primaryColor: _primaryColor,
       accentColor: _accentColor,
       
        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(title: 'Bienvenidos',),
       
        
    );
   
  }
}

