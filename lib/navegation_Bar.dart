import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/hover_text_button.dart';

class SquareNavegation extends StatefulWidget { 
  const SquareNavegation({
    super.key,
    required this.section1,
    required this.section2,
    required this.section3,
    required this.section4,
    required this.section5,
  });

  final GlobalKey section1;
  final GlobalKey section2;
  final GlobalKey section3;
  final GlobalKey section4;
  final GlobalKey section5;

  @override
  _SquareNavegationState createState() => _SquareNavegationState();
}

class _SquareNavegationState extends State<SquareNavegation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Center(
            child: Container(
              color: Colors.transparent,
              margin: const EdgeInsets.all(15),
              height: 50,
              width: 250,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0x37FFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: "Home Page",
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section1.currentContext!, // Acessando a propriedade do widget
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                      icon: const Icon(Icons.radio_button_unchecked),
                      color: Colors.white,
                    ),
                    IconButton(
                      tooltip: "Conquistas",
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section2.currentContext!, // Acessando a propriedade do widget
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                      icon: const Icon(Icons.radio_button_unchecked),
                      color: Colors.white,
                    ),
                    IconButton(
                      tooltip: "Habilidades",
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section3.currentContext!, // Acessando a propriedade do widget
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                      icon: const Icon(Icons.radio_button_unchecked),
                      color: Colors.white,
                    ),
                    IconButton(
                      tooltip: "Sobre Mim",
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section4.currentContext!, // Acessando a propriedade do widget
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                      icon: const Icon(Icons.radio_button_unchecked),
                      color: Colors.white,
                    ),
                     HoverTextButton(
            text: 'Outros',
            textStyle: GoogleFonts.passionOne(
              textStyle: const TextStyle(
                fontSize: 17,
                color: Color(0xFFD0DEE7),
              ),
            ),
            onPressed:() async {
                          return await Scrollable.ensureVisible(
                            widget.section5.currentContext!, // Acessando a propriedade do widget
                            duration: const Duration(milliseconds: 600),
                          );
                        },
          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}