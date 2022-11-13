import 'package:flutter/material.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
