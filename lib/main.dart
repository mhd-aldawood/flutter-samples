import 'package:flutter/material.dart';
import 'package:ninja_id/Quote.dart';

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
  List<Qoute> list = [
    Qoute(author: "moataz", text: "hi1"),
    Qoute(author: "moataz1", text: "hi2"),
    Qoute(author: "moataz2", text: "hi2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(children: [
        ...quotes.map((q) => Text(q)).toList(),
        ...list.map((item)=>Text("${item.text} - ${item.author}")).toList()],),
    );
  }
}
