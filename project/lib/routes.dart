import 'package:flutter/widgets.dart';

import 'views/cart/cart_screen.dart';
import 'views/home/home_screen.dart';
import 'views/init_screen.dart';
// import 'screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  // SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};
