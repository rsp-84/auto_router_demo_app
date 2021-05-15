import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
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
            Center(
              child: Text(
                'This is the email page',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
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
