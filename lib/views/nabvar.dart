import 'package:flutter/material.dart';
import 'package:motilon_viajero/agencia/agencia/explore.dart';
import 'package:motilon_viajero/hotel/hotel.dart/explore.dart';
import 'package:motilon_viajero/login/profile_page.dart';
import 'package:motilon_viajero/map/animated_market_map.dart';
import 'package:motilon_viajero/profile/profile.dart';
import 'package:motilon_viajero/restaurants/view/home.dart';
import 'package:motilon_viajero/sites/travel_app.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
       UserData userData = UserData(
      name: 'Carlos Albarracin',
      email: 'albarracincarlos58@gmail.com',
      password: 'password123',
      profileImage: 'https://example.com/profile_image.jpg',
    );
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Carlos Albarracin '),
            accountEmail: const Text('albarracincarlos58@gmail.com'),
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
            leading: const Icon(Icons.map),
            title: const Text('Mapa'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AnimateMarketMap(),
                      ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_size_select_actual_outlined),
            title: const Text('Municipios'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TravelApp(),
                      ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.holiday_village),
            title: const Text('Hoteles'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Explore(),
                      ));
            },
          ),
           ListTile(
            leading: Icon(Icons.public),
            title: Text('Agencias'),
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const Agencia(),
                      ));
            } 
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Restaurantes'),
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const  HomePage(),
                      ));
            } 
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('configuracion'),
             onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  const Perfil(),
                      ));
            } 
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Politicas'),
           
          ),
          const Divider(),
          ListTile(
            title: const Text('Salir'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}