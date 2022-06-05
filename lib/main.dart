import 'package:flutter/material.dart';
import 'package:pr2_animator_app/screens/details_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomeScreen(),
        'details_screen' : (context) => const DetailsScreen(),
      },
    ),
  );
}
