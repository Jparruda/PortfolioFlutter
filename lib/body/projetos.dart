import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jpflutter/carousel.dart';

class Projetos extends StatelessWidget {
   const Projetos ({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF267499),
            Color(0xFF000000)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2 ,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(16),
                child: const Text("/Habilidades",
                style: TextStyle(
                  fontSize: 68,
                  color: Color(0xFF4095CD),
                  fontWeight: FontWeight.bold
                ),
                ),
                
                
                ),
              DestinationCarousel(),
            ],
          )
      ],
    );
  }
}
