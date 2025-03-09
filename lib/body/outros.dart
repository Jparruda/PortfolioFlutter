import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Outros extends StatelessWidget {
  const Outros({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF000000),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
              color: Color(0xff0E1011),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70)),
            ),
          ),
        ],
      ),
    );
  }
}
