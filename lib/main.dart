import 'package:book_app/constants.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookipidea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: KprimaryColor,
        brightness: Brightness.dark
      ),
      home: const SplashView(),
    );
  }
}
