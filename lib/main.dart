import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jpflutter/body/navegationBar.dart';
import 'package:jpflutter/body/page1.dart';

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

    return const Scaffold(
      body: Stack(
        children: [
          PageFive(),
          SquareNavegation(),
        ],
      ),
    );
  }
}
