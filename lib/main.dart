import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/splash_screen/splash_screen.dart';
import 'package:flutter_application_1/utilities/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: appRoutes,
      theme: ThemeData(
          fontFamily: 'Sono', primaryColor: Color.fromARGB(255, 119, 32, 32)),
    );
  }
}
