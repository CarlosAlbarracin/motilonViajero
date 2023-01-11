import 'package:flutter/material.dart';

import 'package:motilon_viajero/menu/views/pages/home_page.dart';
import 'package:motilon_viajero/menu/views/widgets/custom_bottom_nav.dart';
// import 'package:travel_app/theme.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: PageView(
          children: [
            HomePage(),
          ],
        )),
        Align(alignment: Alignment.bottomCenter, child: CustomNavbar())
      ],
    );
  }
}
