import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   const HomePage ({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 11, 23, 26),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: const Row(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Portfólio",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 28, 160, 183),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                  Container(
                    color: Color.fromARGB(255, 11, 23, 26),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ],
              ),
              Positioned(
                top: 50,
                left: 100,
                child: Image.asset(
                  'assets/images/ima1.png',
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            ],
          );
  }
}
