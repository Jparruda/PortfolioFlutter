import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RedeSocial extends StatelessWidget {
  const RedeSocial({
    super.key,
    required this.section5,
  });

  final GlobalKey section5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      key: section5,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4A8E94), Color(0xFF020202)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    ));
  }
}
