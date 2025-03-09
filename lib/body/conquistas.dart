import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Conquistas extends StatelessWidget {
  const Conquistas({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFFA1CFD3),
            Color(0xFF267599)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(16),
              child: const Text(
                "/Conquistas",
                style: TextStyle(
                    fontSize: 68,
                    color: Color(0xFF87DAE1),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                    Column(
                      children: [
                        const Text("Congresso",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        )),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o valor para controlar o arredondamento das bordas
                          child: Image.asset(
                            'images/ima2.jpeg',
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Aprovação",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        )),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o valor para controlar o arredondamento das bordas
                          child: Image.asset(
                            'images/ima4.jpeg',
                            width: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("Equipe de Robótica",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        )),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Ajuste o valor para controlar o arredondamento das bordas
                          child: Image.asset(
                            'images/ima3.jpeg',
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
            ),
          ],
        )
          ],
        );
  }
}
