import 'package:flutter/material.dart';
import 'package:flutter_profile2/main.dart';
import 'package:get/get.dart';
class About extends StatefulWidget {
  const About({super.key, required String title});

  @override
  State<About> createState() => _AboutState();
  
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:   Text('About Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           Get.to(ProfileScreen(title: 'home'));
          },
          child: Text('Back Home'),
        ),
      ),
    );
  }
}