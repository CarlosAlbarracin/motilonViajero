import 'package:flutter/material.dart';
import 'package:motilon_viajero/sites/models/place.dart';
import 'package:motilon_viajero/views/navbar.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(
        
      ),
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:const AssetImage("assets/images/inicio.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.srcOver)
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Expanded(child: Text("data",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 64,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0,10),
                      )
                    ]
                  ),textAlign: TextAlign.center,
                  )
                  )
                ],),SizedBox(height: 60,)
                ]),
              ),
              Positioned(
                bottom: 0,
                left:0,
                right: 0,
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey, width: 1),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20,
                        offset: Offset(0,10),

                      )
                    ]
                    
                  ),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Expanded(child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: "search",
                          hintStyle: TextStyle(color: Colors.grey),
                          focusedBorder:InputBorder.none,
                          enabledBorder: InputBorder.none
                        ),
                      ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.search, color: Colors.grey,),
                      )
                    ]
                    ),
                )
                
                )
            ],
          ),
          const SizedBox(height: 20,),
          Expanded(
           
            child: ListView(children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:20),
                child: Text("top destinos",style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 24),),
                ),
                const SizedBox(height: 20,),        
                ]      
                ,)
            ),
        ],
      ),
      
    );

  }
}