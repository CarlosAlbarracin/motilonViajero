import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:motilon_viajero/firebase_options.dart';

import 'login/splash_screen.dart';




void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color _primaryColor = HexColor('#000000');
  final Color _accentColor = HexColor('#A71111');

  MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         title: 'Flutter Demo',
      theme: ThemeData(
      primaryColor: _primaryColor, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: _accentColor),
      ),
      home:  const SplashScreen(title: 'Bienvenidos',),
       
        
    );
   
  }
}

