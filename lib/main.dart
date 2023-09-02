import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:jpflutter/body/conquistas.dart';
import 'package:jpflutter/body/habilidades.dart';
import 'package:jpflutter/body/home.dart';
import 'package:jpflutter/body/redesSociais.dart';
import 'package:jpflutter/body/sobreMim.dart';
import 'package:jpflutter/navegationBar.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final route = GoRouter(initialLocation: '/', routes: [
      GoRoute(
          path: "/",
          pageBuilder: (context, state) => const MaterialPage(child: Home())),
    ]);

    return MaterialApp.router(
      title: "Portfólio",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerDelegate: route.routerDelegate,
      routeInformationParser: route.routeInformationParser,
      routeInformationProvider: route.routeInformationProvider,
    );
  }
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class Home extends StatelessWidget {
  const Home({Key? key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<GlobalKey> keys = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomePage(
                  key: keys[0],
                ),
                Conquistas(
                  key: keys[1],
                ),
                Habilidades(
                  key: keys[2],
                ),
                SobreMim(
                  key: keys[3],
                ),
                RedeSocial(
                  key: keys[4],
                )
              ],
            ),
          ),
          SquareNavegation(
            section1: keys[0],
            section2: keys[1],
            section3: keys[2],
            section4: keys[3],
            section5: keys[4]
            )
        ],
      ),
    );
  }
}
