import 'package:flutter/material.dart';
import 'package:navigator_test/page1.dart';
import 'package:navigator_test/page2.dart';
import 'package:navigator_test/splash.dart';
import "package:velocity_x/velocity_x.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _routerDelegate = VxNavigator(
    notFoundPage: (uri, params) => MaterialPage(
      key: ValueKey('not-found-page'),
      child: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('Page ${uri.path} not found'),
          ),
        ),
      ),
    ),
    routes: {
      '/': (uri, params) => MaterialPage(child: SplashScreen()),
      '/page1': (uri, params) => MaterialPage(child: Page1()),
      '/page2': (uri, params) => MaterialPage(child: Page2()),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'VxNavigator',
      routerDelegate: _routerDelegate,
      routeInformationParser: VxInformationParser(),
    );
  }
}
