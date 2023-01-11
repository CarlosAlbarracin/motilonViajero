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
];

const _path = 'assets/';

final mapMakers = [
  MapMarket(
      image: '${_path}location.png',
      title: 'Ocana',
      address: 'ocaña avenida',
      rate: 4.5,
      location: _locations[0]),
  MapMarket(
    image: '${_path}location.png',
    title: 'Cacota',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[1],
  ),
  MapMarket(
    image: '${_path}location.png',
    title: 'Ocaña',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[2],
  ),
  MapMarket(
    image: '${_path}location.png',
    title: 'Ocaña',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[3],
  ),
  MapMarket(
    image: '${_path}logo1.png',
    title: 'Ocaña',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[4],
  ),
  MapMarket(
    image: '${_path}logo1.png',
    title: 'Ocaña',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[5],
  ),
  MapMarket(
    image: '${_path}logo1.png',
    title: 'Ocaña',
    rate: 4.5,
    address: 'ocaña avenida',
    location: _locations[6],
  ),
];
