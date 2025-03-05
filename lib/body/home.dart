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
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: Color(0xff0E1011), // Cor movida para o BoxDecoration
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            ),
          ),
        ],
      ),
    );
  }
}