import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          HomeScreen.routeName,
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
            height: size.height * 0.2,
            child: assetImage("tailor.png", color: Colors.white),
          )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Divider(
              thickness: 2,
              color: Colors.white,
            ),
          ),
          Text(
            'Turath',
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}

Image assetImage(
  String nameWithExtension, {
  bool isIcon = false,
  BoxFit fit = BoxFit.fill,
  Color? color,
}) {
  return Image.asset(
    "assets/${isIcon ? "vectors" : "images"}/$nameWithExtension",
    fit: fit,
    color: color,
  );
}
