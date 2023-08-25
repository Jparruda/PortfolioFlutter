import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final route = GoRouter(
      routes: [
        GoRoute(
            path: "/",
            pageBuilder: (context, state) => const MaterialPage(child: Home())),
      ],
    );
    return MaterialApp.router(
      title: "Minha Aplicação",
      routerDelegate: route.routerDelegate,
      routeInformationParser: route.routeInformationParser,
      routeInformationProvider: route.routeInformationProvider,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey section1 = GlobalKey();
    GlobalKey section2 = GlobalKey();
    GlobalKey section3 = GlobalKey();
    GlobalKey section4 = GlobalKey();
    GlobalKey section5 = GlobalKey();

    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                key: section1,
                color: Color.fromARGB(255, 5, 26, 119),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                key: section2,
                color: Color.fromARGB(164, 7, 17, 71),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                key: section3,
                color: Color.fromARGB(255, 21, 74, 117),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                key: section4,
                color: Color.fromARGB(31, 33, 181, 240),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                key: section5,
                color: Color.fromARGB(255, 40, 81, 192),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                color: Colors.red,
                margin: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        return await Scrollable.ensureVisible(
                            section1.currentContext!,
                            duration: Duration(milliseconds: 600));
                      },
                      icon: Icon(Icons.radio_button_checked),
                    ),
                    IconButton(
                        onPressed: () async {
                          return await Scrollable.ensureVisible(
                              section2.currentContext!,
                              duration: Duration(milliseconds: 600));
                        },
                        icon: Icon(Icons.radio_button_checked)),
                    IconButton(
                        onPressed: () async {
                          return await Scrollable.ensureVisible(
                              section3.currentContext!,
                              duration: Duration(milliseconds: 600));
                        },
                        icon: Icon(Icons.radio_button_checked)),
                    IconButton(
                        onPressed: () async {
                          return await Scrollable.ensureVisible(
                              section4.currentContext!,
                              duration: Duration(milliseconds: 600));
                        },
                        icon: Icon(Icons.radio_button_checked)),
                    IconButton(
                        onPressed: () async {
                          return await Scrollable.ensureVisible(
                              section5.currentContext!,
                              duration: Duration(milliseconds: 600));
                        },
                        icon: Icon(Icons.radio_button_checked)),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
