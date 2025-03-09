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
            height: MediaQuery.of(context).size.height * 0.85,
            decoration: const BoxDecoration(
              color: Color(0xff0E1011),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            ),
          ),
          // Novo Container sobreposto
          Positioned(
            top: 70, // Ajuste a posição conforme necessário
            left: MediaQuery.of(context).size.width * 0.35, // Ajuste a posição conforme necessário
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.2,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Color(0xFFCCCCCC),
                  width: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}