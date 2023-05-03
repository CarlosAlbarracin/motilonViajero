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
     List<int> list = [1, 2, 3, 4, 5];
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
              
                  child: Center(child: Image.network(item, fit: BoxFit.cover, width: 1000, height: 500,)),
                  color: Colors.white,
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
                padding: EdgeInsets.only(top: 26, left: 20, right: 20),
                height: size.height * 0.54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hotel", style: appTheme.textTheme.headline2),
                    SizedBox(height: 4),
                    Row(children: [
                      Icon(
                        Icons.location_pin,
                        size: 14,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Cucuta",
                        style: appTheme.textTheme.caption,
                      )
                    ]),
                    SizedBox(height: 8),
                    Rating(rating: 4.5, color: Colors.black),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: appTheme.accentColor,
                            ),
                            splashColor: appTheme.accentColor,
                            onPressed: () {
                              removePackage();
                            }),
                        Container(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            numberPackage.toString(),
                            style: appTheme.textTheme.caption,
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              addPackage();
                            }),
                        SizedBox(width: 12),
                        Icon(
                          Icons.timer_rounded,
                          color: appTheme.accentColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "5 Days",
                          style: appTheme.textTheme.caption
                              ?.merge(TextStyle(color: appTheme.accentColor)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Descricion",
                      style: appTheme.textTheme.headline3
                          ?.merge(TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Enjoy your winter vacation with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!",
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                      style: appTheme.textTheme.bodyText1,
                    ),
                    SizedBox(height: size.height*0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "\$400",
                                style: TextStyle(
                                    color: appTheme.accentColor,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "/Package",
                                style: TextStyle(
                                    color: appTheme.accentColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ]),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: appTheme.accentColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'PlayFair',
                                    fontWeight: FontWeight.bold)),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Book Now",
                                style: appTheme.textTheme.headline3,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
