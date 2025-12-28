import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?) ?? {};
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/location");
                },
                label: Text("Edit Location"),
                icon: Icon(Icons.edit_location),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data["location"],
                    style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                  ),
                  SizedBox(height: 20),
                  Text(
                    data["time"],
                    style: TextStyle(fontSize: 66.0, letterSpacing: 2.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
