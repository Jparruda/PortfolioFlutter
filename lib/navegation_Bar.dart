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
              height: MediaQuery.of(context).size.width * 0.03,
              width: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(38, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Adicionado mainAxisSize: MainAxisSize.min
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HoverTextButton(
                      text: 'Home',
                      textStyle: GoogleFonts.passionOne(
                        textStyle: const TextStyle(
                          fontSize: 14, // Reduzido o tamanho da fonte
                          color: Color(0xFFD0DEE7),
                        ),
                      ),
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section1.currentContext!,
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                    ),
                    HoverTextButton(
                      text: 'Sobre',
                      textStyle: GoogleFonts.passionOne(
                        textStyle: const TextStyle(
                          fontSize: 14, // Reduzido o tamanho da fonte
                          color: Color(0xFFD0DEE7),
                        ),
                      ),
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section2.currentContext!,
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                    ),
                    HoverTextButton(
                      text: 'Projetos',
                      textStyle: GoogleFonts.passionOne(
                        textStyle: const TextStyle(
                          fontSize: 14, // Reduzido o tamanho da fonte
                          color: Color(0xFFD0DEE7),
                        ),
                      ),
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section3.currentContext!,
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                    ),
                    HoverTextButton(
                      text: 'Habilidades',
                      textStyle: GoogleFonts.passionOne(
                        textStyle: const TextStyle(
                          fontSize: 14, // Reduzido o tamanho da fonte
                          color: Color(0xFFD0DEE7),
                        ),
                      ),
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section4.currentContext!,
                          duration: const Duration(milliseconds: 600),
                        );
                      },
                    ),
                    HoverTextButton(
                      text: 'Outros',
                      textStyle: GoogleFonts.passionOne(
                        textStyle: const TextStyle(
                          fontSize: 14, // Reduzido o tamanho da fonte
                          color: Color(0xFFD0DEE7),
                        ),
                      ),
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                          widget.section5.currentContext!,
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