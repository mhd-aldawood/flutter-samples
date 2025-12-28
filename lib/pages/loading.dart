import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninja_id/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time;

  void setupWorldTime() async {
    try {
      print('START fetching time');

      WorldTime worldTime = WorldTime(
        location: "Dubai",
        flag: "uae.png",
        url: "Asia/Dubai",
      );

      await worldTime.getTime();
      Navigator.pushReplacementNamed(context, '/home',arguments: {
        'location': worldTime.location,
        'flag': worldTime.flag,
        'time': worldTime.time,
      });

      print('TIME RECEIVED: ${worldTime.time}');

      if (!mounted) return;

      setState(() {
        time = worldTime.time;
      });

      print('STATE UPDATED');
    } catch (e, stack) {
      print('ERROR: $e');
      print(stack);

      if (!mounted) return;

      setState(() {
        time = '$e';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
         child:  SpinKitRotatingCircle(
            color: Colors.white,
            size: 50.0,
          )
      ),
    );
  }
}
