import 'package:flutter/material.dart';
import 'package:motilon_viajero/agencia/agencia/destinations.dart';





class Agencia extends StatelessWidget {
  const Agencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 91,
        child: BottomAppBar(
            child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  
                ],
              ),
            ],
          ),
        )),
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            
            Divider(
              height: 0,
            ),
            Agencias()
          ],
        ),
      )),
    );
  }
}
