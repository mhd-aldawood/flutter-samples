import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/routes/app_pages.dart';
import 'package:my_app/core/initial_binding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Define initial route
      title: 'GetX Tutorial App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      // Configure route management
      getPages: AppPages.routes,
      // Set up dependency injection
      // initialBinding: InitialBinding(),
      // Configure logging for different environments
      enableLog: kDebugMode,
      // Set default transition
      defaultTransition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 250),
    );
  }
}
