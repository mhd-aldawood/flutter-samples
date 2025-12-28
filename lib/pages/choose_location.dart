import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  void initState() {
    super.initState();
  }


  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("initState");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.blue[900],
      body: TextButton(
        onPressed: () => setState(() => counter++),
        child: Text("counter is $counter"),
      ),
    );
  }
}
