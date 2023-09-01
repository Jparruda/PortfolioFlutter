import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({
    super.key,
    required this.section4,
  });

  final GlobalKey section4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: section4,
        color: Color.fromARGB(255, 74, 142, 148),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
