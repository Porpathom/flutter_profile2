import 'package:flutter/material.dart';
import 'package:flutter_profile2/about.dart';
import 'package:flutter_profile2/darwer.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp(title: 'My App',));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(title: 'home',),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Container(child: 
        const Text(
              'MY PROFILE',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const MyDarwer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background image with overlapping profile image
            Stack(
              clipBehavior: Clip.none, alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://blog.gskinner.com/wp-content/uploads/2022/09/wonderous-flutter-ide_crop-1024x500.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 65,
                      backgroundImage: NetworkImage('https://scontent.fubp1-1.fna.fbcdn.net/v/t39.30808-6/448129730_1438782420854477_933743081245996698_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeHmoU2OuhGhYcIXVzpERlB1RyiOhIBbi-lHKI6EgFuL6SuB0LUC83CyMm-I7TQbZT7CiLSfq9MvL3Bs12c64laV&_nc_ohc=o3Pbdl3klEQQ7kNvgHPEuYJ&_nc_ht=scontent.fubp1-1.fna&oh=00_AYCC-RWlAhIpZ1Pbk9mWYN4FyAT03C26s8FI1GEJLhyRgg&oe=669325D6'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            const Text(
              'Pathom Klompanya',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Computer Science Student',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 125, 121, 121),
              ),
            ),
            const SizedBox(height: 20),
            // About me section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'About me',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Iheb Meftah, étudiant en Licence Science Informatiques spécialité Analyse De Données et Big Data',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Education',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Higher Institute of Computer Science and Multimedia of Sfax',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Social',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook),
                        iconSize: 30,
                        onPressed: () {
                          // Add your action here
                        },
                      ),
                      
                      IconButton(
                        icon: const Icon(Icons.linked_camera),
                        iconSize: 30,
                        onPressed: () {
                          // Add your action here
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.email),
                        iconSize: 30,
                        onPressed: () {
                          // Add your action here
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.person),
                        iconSize: 30,
                        onPressed: () {
                          // Add your action here
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Center(child: SizedBox(height: 24)),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(const About(title: 'About',));
                      }, 
                        child: const Text('About ME'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
