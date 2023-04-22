import 'package:latlong2/latlong.dart';

class MapMarket {
  const MapMarket({
    required this.image,
    required this.title,
    required this.address,
    required this.rate,
    required this.location,
  });
  final String image;
  final String title;
  final String address;
  final double rate;
  final LatLng location;
}

final _locations = [
  LatLng(8.2521334, -73.3882403),
  LatLng(7.3720218, -72.6678032),
  LatLng(7.2687024, -72.6446836),
  LatLng(7.6002356, -72.6199802),
  LatLng(7.8510561, -72.5049497),
  LatLng(7.6120496, -72.6517289),
  LatLng(7.7727966, -72.8143143),
  LatLng(7.8510521, -72.5375707),
  LatLng(7.7146951, -72.6605963),
  LatLng(7.2986229, -72.4987246),
];

const _path = 'assets/';

final mapMakers = [
  MapMarket(
      image: '${_path}ocana.jpg',
      title: 'Ocaña',
      address: 'ocaña avenida',
      rate: 4.5,
      location: _locations[0]),
  MapMarket(
    image: '${_path}pamplona.png',
    title: 'Pamplona',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[1],
  ),
  MapMarket(
    image: '${_path}cacota.jpg',
    title: 'Cacota',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[2],
  ),
  MapMarket(
    image: '${_path}chinacota.jpg',
    title: 'Chinacota',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[3],
  ),
  MapMarket(
    image: '${_path}paris.jpg',
    title: 'Ocaña',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[4],
  ),
  MapMarket(
    image: '${_path}bochalema.jpg',
    title: 'Bochalema',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[5],
  ),
  MapMarket(
    image: '${_path}salazar.jpg',
    title: 'Salazar',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[6],
  ),
  MapMarket(
    image: '${_path}villa.jpg',
    title: 'Villa del Rosario',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[7],
  ),
   MapMarket(
    image: '${_path}durania.jpg',
    title: 'Durania',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[8],
  ),
  MapMarket(
    image: '${_path}durania.jpg',
    title: 'Labateca',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[9],
  ),
];
