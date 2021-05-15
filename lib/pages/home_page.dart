import 'package:auto_router_demo_app/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Auto Route Demo',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'This is the Home Route',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    context.router.navigateNamed('/books');
                    print('pushed');
                  },
                  child: Text('Go to 2nd page'),
                ),
              ),
            ),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    context.router.navigate(BookDetailsRoute(bookId: 23));
                    print('pushed');
                  },
                  child: Text('Go to 3rd page'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
