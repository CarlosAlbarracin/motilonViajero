import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:motilon_viajero/components/rating,.dart';
final List<String> imgList = [
  'https://ak-d.tripcdn.com/images/0225z12000agx4ag37BC8_R_960_660_R5_D.jpg',
  'https://media.staticontent.com/media/pictures/5e65feee-c16c-4edd-8b5e-f262133e7828',
  'https://www.momondo.com.co/rimg/kimg/b3/6e/216dcdaf-5acdc0d0-2.jpg?width=720&height=576&crop=true',
  'https://cdn0.matrimonio.com.co/vendor/4293/3_2/960/jpg/68904507-1199866300208595-6514209604019159040-n_10_94293-158221530864693.jpeg',
  'https://content.r9cdn.net/rimg/kimg/b3/6e/216dcdaf-5acdc0d0-15.jpg?width=500&height=350&xhint=400&yhint=312&crop=true',
  'https://ak-d.tripcdn.com/images/02233120009sz89rjDC91_R_800_525.jpg'
];
class ViewDetails extends StatefulWidget {
  const ViewDetails({super.key});

  @override
  _ViewDetailsState createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  int numberPackage = 0;

  removePackage() {
    setState(() {
      numberPackage--;
      numberPackage = max(numberPackage, 0);
    });
  }

  addPackage() {
    setState(() {
      numberPackage++;
      numberPackage = min(numberPackage, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Stack(
        children: [
          Positioned(
            
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              
              color: Colors.white,
                height: size.height * 0.5,
                
          child: CarouselSlider(
           
        options: CarouselOptions( height: height, viewportFraction: 1.0,),
        items: imgList
            .map((item) => Container(
              
                  color: Colors.white,
              
                  child: Center(child: Image.network(item, fit: BoxFit.cover, width: 1000, height: 500,)),
                ))
            .toList(),
      ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 26, left: 20, right: 20),
                height: size.height * 0.54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hotel Casino Internacional", style: appTheme.textTheme.displayMedium),
                    const SizedBox(height: 4),
                    Row(children: [
                      const Icon(
                        Icons.location_pin,
                        size: 14,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "Cucuta",
                        style: appTheme.textTheme.bodySmall,
                      )
                    ]),
                    const SizedBox(height: 8),
                    Rating(rating: 4.5, color: Colors.black),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: appTheme.colorScheme.secondary,
                            ),
                            splashColor: appTheme.colorScheme.secondary,
                            onPressed: () {
                              removePackage();
                            }),
                        Container(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            numberPackage.toString(),
                            style: appTheme.textTheme.bodySmall,
                          ),
                        ),
                        IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              addPackage();
                            }),
                        const SizedBox(width: 12),
                        Icon(
                          Icons.timer_rounded,
                          color: appTheme.colorScheme.secondary,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "5 Dias",
                          style: appTheme.textTheme.bodySmall
                              ?.merge(TextStyle(color: appTheme.colorScheme.secondary)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Descripcion",
                      style: appTheme.textTheme.displaySmall
                          ?.merge(const TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Nuestro hotel en Cúcuta, Colombia, de estilo ejecutivo y acogedor, se sitúa a sólo 15 minutos del Aeropuerto internacional Camilo Daza, y el Centro Comercial Ventura Plaza, en pleno centro financiero y comercial de la ciudad",
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                      style: appTheme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: size.height*0.02),
                  Expanded(
  child: Row(
    children: [
      Flexible(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "\$400",
                style: TextStyle(
                  color: appTheme.colorScheme.secondary,
                  fontSize: 28, // Ajusta el tamaño de fuente si es necesario
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "/Paquete",
                style: TextStyle(
                  color: appTheme.colorScheme.secondary,
                  fontSize: 14, // Ajusta el tamaño de fuente si es necesario
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(width: 10), // Ajusta el espacio entre los elementos si es necesario
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 16, // Ajusta el tamaño de fuente si es necesario
            fontFamily: 'PlayFair',
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Comprar",
            style: appTheme.textTheme.displaySmall,
          ),
        ),
      ),
    ],
  ),
),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
