import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jpflutter/carousel.dart';

class Habilidades extends StatelessWidget {
   const Habilidades ({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            color: Color(0xFF000000),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
                  color: Color(0xFF000000),
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
