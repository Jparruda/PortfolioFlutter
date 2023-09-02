import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RedeSocial extends StatelessWidget {
  const RedeSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
