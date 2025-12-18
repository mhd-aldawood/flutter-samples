import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  QuoteCard({
    required this.quote,
  });

  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${quote.text}",
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 6),
            Text(
              "${quote.author}",
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}