import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  BookDetailsPage({@PathParam('bookId') required this.bookId});

  final int bookId;

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
                'This is the books page: Book # $bookId',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
