import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youmovie/screens/detail_movie_screen.dart';
import 'package:youmovie/screens/home_screen.dart';
import 'package:youmovie/settings/style_settings.dart';
import 'package:youmovie/screens/popular_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myThemes.lightTheme,
      home: const HomeScreen(),
    );
  }
}
