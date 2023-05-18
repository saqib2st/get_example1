import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var title;
  ScreenOne({super.key, this.title});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is' + Get.arguments[1]),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.amber),
        child: Center(
            child: TextButton(
          onPressed: () {
            Get.toNamed('/screenTwo');
          },
          child: const Text('Goto ScreenTwo'),
        )),
      ),
    );
  }
}
