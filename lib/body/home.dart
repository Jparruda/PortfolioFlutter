import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(16),
              child:  Text(
                "João Arruda",
                style: GoogleFonts.homemadeApple(
                  textStyle: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
              ),
            ),
            Container(
              color: Color.fromARGB(255, 28, 160, 183),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.6,
                    alignment: Alignment.center,
                    child: const Text('''
print("Olá!")

Me chamo João Pedro Arruda, sou acadêmico
de Bacharelado em Ciência da Computação pela
Universidade Federal do Pará e esse é o meu
portfólio em Flutter
''', style: TextStyle(
  fontSize: 40,
  color: Color(0xFFCAFBFF),
  fontWeight: FontWeight.bold
),),
                  ),
                ],
              ),
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
