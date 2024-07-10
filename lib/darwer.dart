import 'package:flutter/material.dart';
import 'package:flutter_profile2/about.dart';
import 'package:flutter_profile2/main.dart';
import 'package:get/get.dart';

class MyDarwer extends StatefulWidget {
  const MyDarwer({super.key});

  @override
  State<MyDarwer> createState() => _MyDarwerState();
}

class _MyDarwerState extends State<MyDarwer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('My App'),
            onTap: () {
              // Update the state of the app.
              // ...
              Get.to(MyApp(title: "Home"));
            },
          ),
          ListTile(
            title: const Text('About Me'),
            onTap: () {
              // Update the state of the app.
              // ...
              Get.to(const About(title: "About Me"));
            },
          ),
        ],
      ),
    );
  }
}
