import 'package:flutter/material.dart';
import 'package:motilon_viajero/agencia/agencia/viewDetails.dart';



class Agencias extends StatefulWidget {
  const Agencias({Key? key}) : super(key: key);

  @override
  _AgenciasState createState() => _AgenciasState();
}

class _AgenciasState extends State<Agencias> {
  Image img = Image.asset('assets/corpo.jpg');
  Image img2 = Image.asset('assets/agencia.png');
  Image img3 = Image.asset('assets/mely.jpg');

  int selectedDestinationIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        children: [
          buildDestinationRow(
            index: 0,
            img: img,
            title: 'Corporacion mixta de Turismo',
            rating: '4.87',
            distance: '8:00 am a 5:00pm',
            date: '35465165165',
            price: '',
          ),
          const SizedBox(height: 30),
          buildDestinationRow(
            index: 1,
            img: img2,
            title: 'Hotel Holiday Inn',
            rating: '4.84',
            distance: '1,669 kilometros',
            date: '',
            price: '\$285',
          ),
          const SizedBox(height: 30),
          buildDestinationRow(
            index: 2,
            img: img3,
            title: 'Hotel By hilton',
            rating: '4.93',
            distance: '2,000 kilometros',
            date: '',
            price: '\$261',
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget buildDestinationRow({
    required int index,
    required Image img,
    required String title,
    required String rating,
    required String distance,
    required String date,
    required String price,
  }) {
    bool isSelected = index == selectedDestinationIndex;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedDestinationIndex = index;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ViewDetails(
                 
                ),
              ),
            );
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: isSelected ? img.image : img.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 20,
                right: 20,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 15,
                ),
                const SizedBox(width: 5),
                Text(
                  rating,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          distance,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        Text(
          date,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        Row(
          children: [
            Text(
              '$price ',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'noche',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        if (isSelected)
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ViewDetails(
                
                  ),
                ),
              );
            },
            child: const Text(""),
          ),
      ],
    );
  }
}