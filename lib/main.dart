import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());


}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final route = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
            path: "/",
            pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: Home(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutCirc)
                      .animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
      ],
    );
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
   Home({super.key});
    GlobalKey section1 = GlobalKey();
    GlobalKey section2 = GlobalKey();
    GlobalKey section3 = GlobalKey();
    GlobalKey section4 = GlobalKey();
    GlobalKey section5 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<GlobalKey> keys = [
      section1,
      section2,
      section3,
      section4,
      section5,
    ];


    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Home(key: keys[0],)
              ],
            ),
          )
        ],
      ),
    );
  }
}


