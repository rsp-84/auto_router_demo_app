import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'routes/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Auto Route Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
