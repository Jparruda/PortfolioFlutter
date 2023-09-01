import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Conquistas extends StatelessWidget {
  const Conquistas({
    super.key,
    required this.section2,
  });

  final GlobalKey section2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: section2,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 11, 23, 26),
          Color.fromARGB(255, 140, 28, 11),
          Color.fromARGB(255, 74, 142, 148)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
    );
  }
}
