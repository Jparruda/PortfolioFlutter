import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SquareNavegation extends StatelessWidget {
  const SquareNavegation({super.key});
  

  @override
  Widget build(BuildContext context) {
    GlobalKey section1 = GlobalKey();
    GlobalKey section2 = GlobalKey();
    GlobalKey section3 = GlobalKey();
    GlobalKey section4 = GlobalKey();
    GlobalKey section5 = GlobalKey();
    return Scaffold(
      body: SizedBox(
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
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () async {
                              return await Scrollable.ensureVisible(
                                  section1.currentContext!,
                                  duration: Duration(milliseconds: 600));
                            },
                            icon: Icon(Icons.radio_button_unchecked),
                            color: Colors.white,
                          ),
                          IconButton(
                              tooltip: "Resumo",
                              onPressed: () async {
                                return await Scrollable.ensureVisible(
                                    section2.currentContext!,
                                    duration: Duration(milliseconds: 600));
                              },
                              icon: Icon(Icons.radio_button_unchecked),
                              color: Colors.white),
                          IconButton(
                              onPressed: () async {
                                return await Scrollable.ensureVisible(
                                    section3.currentContext!,
                                    duration: Duration(milliseconds: 600));
                              },
                              icon: Icon(Icons.radio_button_unchecked),
                              color: Colors.white),
                          IconButton(
                              onPressed: () async {
                                return await Scrollable.ensureVisible(
                                    section4.currentContext!,
                                    duration: Duration(milliseconds: 600));
                              },
                              icon: Icon(Icons.radio_button_unchecked),
                              color: Colors.white),
                          IconButton(
                              onPressed: () async {
                                return await Scrollable.ensureVisible(
                                    section5.currentContext!,
                                    duration: Duration(milliseconds: 600));
                              },
                              icon: Icon(Icons.radio_button_unchecked),
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

}