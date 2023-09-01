import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Habilidades extends StatelessWidget {
  const Habilidades({
    super.key,
    required this.section3,
  });

  final GlobalKey section3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: section3,
        color: Color(0xFF4A8E94),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
