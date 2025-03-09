import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SobreMim extends StatelessWidget {
   const SobreMim ({super.key});

  @override
  Widget build(BuildContext context) {
return Container(
        color: Color(0xFF000000),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      );
  }
}
