import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SobreMim extends StatelessWidget {
   const SobreMim ({super.key});

  @override
  Widget build(BuildContext context) {
return Container(
        color: const Color.fromARGB(255, 74, 142, 148),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      );
  }
}
