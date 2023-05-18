import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_example1/home_screen.dart';
import 'package:get_example1/screen_one.dart';
import 'package:get_example1/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHome(title: 'Flutter Demo Home Page'),
      getPages: [
        GetPage(name: '/', page: () => const MyHome()),
        GetPage(
            name: '/screenOne',
            page: () => ScreenOne(
                  title: 'this is default title',
                )),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
      ],
    );
  }
}
