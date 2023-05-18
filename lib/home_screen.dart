import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  final title;
  const MyHome({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(title),
      ),
      body: Column(
        children: [
          Card(
            child: TextButton(
                onPressed: () {
                  // Get.to(const ScreenOne(
                  //   title: 'TITLE',
                  // ));
                  Get.toNamed('/screenOne', arguments: [
                    'this is title one',
                    'this is title two',
                    'this is title three',
                  ]);
                },
                child: const Text('Got to Screen One')),
          ),
          Card(
            child: ListTile(
              title: const Text('bottom slide '),
              subtitle: const Text('for light and dark mode'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 114, 134),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('Light Mode'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark Mode'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Get.snackbar(
            'Hi youve push the button',
            'message is the to the conveying',
          );
        },
      ),
    );
  }
}
