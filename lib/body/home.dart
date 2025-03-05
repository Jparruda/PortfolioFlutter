import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFFA1CFD3),
      child: Stack( // Usando Stack para sobrepor widgets
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: const BoxDecoration(
              color: Color(0xff0E1011),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            ),
          ),
          // Novo Container sobreposto
          Positioned(
            top: 50, // Ajuste a posição conforme necessário
            left: MediaQuery.of(context).size.width * 0.5, // Ajuste a posição conforme necessário
            child: Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 255, 255, 255),
                borderRadius: BorderRadius.circular(100),
                border: const Border(
                  left: BorderSide(
                    color: Color(0xffD0DEE7),
                    width: 10
                  )
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text('Sobreposto'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}