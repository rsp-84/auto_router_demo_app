import 'package:auto_route/auto_route.dart';
import 'package:auto_router_demo_app/routes/router.gr.dart';
import 'package:flutter/material.dart';

class LoginWrapperPage extends StatefulWidget {
  final Function(bool isLoggedIn)? onLogin;

  const LoginWrapperPage({Key? key, this.onLogin}) : super(key: key);

  @override
  _LoginWrapperPageState createState() => _LoginWrapperPageState();
}

class _LoginWrapperPageState extends State<LoginWrapperPage> {
  String email = "";

  @override
  Widget build(context) => AutoRouter.declarative(
        // use AutoRouter.declarative
        routes: (context) {
          // Declaratively define your routes here
          return [
            EmailyouRoute(onNext: (result) {
              setState(() {
                email:
                result;
              });
            }),
          ];
        },
      );

  validateEmailAndPassword(String email, result) {}
}

// class LoginWrapperPage extends StatefulWidget {
//   @override
//   _LoginWrapperPageState createState() => _LoginWrapperPageState();
// }
//
// class _LoginWrapperPageState extends State<LoginWrapperPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
