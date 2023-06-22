import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:motilon_viajero/restaurants/component/body_menu.dart';
import 'package:motilon_viajero/restaurants/component/body_video.dart';
import 'package:motilon_viajero/restaurants/component/custom_navigator.dart';

import '../component/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexPage = 0;
  List<Widget> pages = [const BodyMenu(), const BodyVideo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'Restaurantes Norte de santander',
          style: GoogleFonts.pacifico(),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(4),
          
          )
        ],
      ),
      drawer: const Drawer(),
      body: pages[indexPage],
      
    );
  }

  // * update content
  void _updateContent(int index) {
    setState(() {
      indexPage = index;
    });
  }
}
