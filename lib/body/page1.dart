import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey section1 = GlobalKey();
    GlobalKey section2 = GlobalKey();
    GlobalKey section3 = GlobalKey();
    GlobalKey section4 = GlobalKey();
    GlobalKey section5 = GlobalKey();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      key: section1,
                      color: Color.fromARGB(255, 11, 23, 26),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: const Row(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Portfólio",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 28, 160, 183),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                    ),
                    Container(
                      color: Color.fromARGB(255, 11, 23, 26),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    // Stack(
                    //   children: [
                    //     Positioned(
                    //       top: 50,
                    //       left: 100,
                    //       child: Image.asset(
                    //         'assets/images/ima1.png',
                    //         fit: BoxFit.fitHeight,
                    //         width: 200,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                Positioned(
                  top: 50,
                  left: 100,
                  child: Image.asset(
                    'assets/images/ima1.png',
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
              ],
            ),
            Container(
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
            Container(
              key: section3,
              color: Color(0xFF4A8E94),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              key: section4,
              color: Color.fromARGB(255, 74, 142, 148),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              key: section5,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF4A8E94), Color(0xFF020202)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            )
          ],
        ),
      ),
    );
  }
}
