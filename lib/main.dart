import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

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
          pageBuilder: (context, state) => const MaterialPage(child: HomeFrame())),
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

class HomeFrame extends StatelessWidget {
  const HomeFrame({Key? key});


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
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeFrame(
              key: keys[0],
            )
          ],
        ),
      ),
    );
  }
}
