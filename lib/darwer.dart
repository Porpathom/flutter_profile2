import 'package:flutter/material.dart';
import 'package:flutter_profile2/bottom_sheet.dart';
import 'package:flutter_profile2/main.dart';
import 'package:flutter_profile2/mix.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_profile2/about.dart';
import 'package:flutter_profile2/grid.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
            child: Text('My App'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Get.to(const ProfileScreen(title: "My App"));
            },
          ),
          ListTile(
            title: const Text('List View'),
            onTap: () {
              Get.to(const AboutPage(title: 'List View',));
            },
          ),
          ListTile(
            title: const Text('Gird View'),
            onTap: () {
              Get.to(const GridPage());
            },
          ),
          ListTile(
            title: const Text('Mix View'),
            onTap: () {
              Get.to(const CombinedPage());
            },
          ),
          ListTile(
            title: const Text('Bottom View'),
            onTap: () {
              Get.to(const MyBottomSheet());
            },
          ),
        ],
      ),
    );
  }
}