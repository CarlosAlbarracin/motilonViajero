import 'package:flutter/material.dart';

import 'package:motilon_viajero/menu/models/place.dart';
import 'package:motilon_viajero/menu/theme.dart';


class Event extends StatelessWidget {
  final Place place;
  const Event(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 230,
      padding: const EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
          // color: mainCOlor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage(place.imageUrl), fit: BoxFit.cover)),
            
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            place.city,
            style: textStyle3.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Image(image: AssetImage('assets/map.png')),
              const SizedBox(
                width: 6,
              ),
              Text(
                place.country,
                style: textStyle3.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
        
      ),
      
      
    );
  }
}
