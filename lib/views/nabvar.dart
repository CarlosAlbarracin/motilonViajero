import 'package:flutter/material.dart';
import 'package:motilon_viajero/hotel/hotel.dart/explore.dart';
import 'package:motilon_viajero/map/animated_market_map.dart';
import 'package:motilon_viajero/sites/travel_app.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Mapa'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimateMarketMap(),
                      ));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Departamentos'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TravelApp(),
                      ));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Explore(),
                      ));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}