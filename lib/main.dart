import 'package:flutter/material.dart';
import 'package:ninja_id/Quote.dart';

import 'QouteCard.dart';

void main() {
  runApp(MaterialApp(home: QuotList()));
}

class QuotList extends StatefulWidget {
  const QuotList({super.key});

  @override
  State<QuotList> createState() => _QuotListState();
}

class _QuotListState extends State<QuotList> {
  List<String> quotes = ["first", "second"];
  List<Quote> list = [
    Quote(author: "moataz", text: "hi1"),
    Quote(author: "moataz1", text: "hi2"),
    Quote(author: "moataz2", text: "hi2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          ...quotes.map((q) => Text(q)).toList(),
          ...list.map((item) => QuoteCard(quote: item,
              delete: (){
                setState(() {
                  list.remove(item);
                });
              }
              ),
          ).toList(),
        ],
      ),
    );
  }
}


