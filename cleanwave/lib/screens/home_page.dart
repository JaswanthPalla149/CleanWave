import 'package:flutter/material.dart';

import 'public_page.dart';
import 'admin_login_page.dart'; 
import 'location_selection_page.dart'; 

class HomePage extends StatelessWidget {
  final String location;

  const HomePage({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

        title: const Text('CLEAN WAVE',
         style: TextStyle(
           fontSize:27,
          fontWeight: FontWeight.w800,),

        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(210, 238, 236, 236),

      ),
      body: Stack(
        children: [
          
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                image: const AssetImage('assets/images/water_homepage.jpg'), 
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), 
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome to CleanWave',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color:  Color.fromARGB(255, 8, 244, 15),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PublicPage(location: location),
                        ),
                      );
                    },
                    icon: const Icon(Icons.people),
                    label: const Text('Public User'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: const Size(200, 50),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminLoginPage(location: location),
                        ),
                      );
                    },
                    icon: const Icon(Icons.shield),
                    label: const Text('Admin'),
                    style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                       minimumSize: const Size(200, 50),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,),
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.tealAccent.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            const Text(
                              'Current Location:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              location,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.location_on),
                           color: Colors.red,
                            onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LocationSelectionPage(),
                              ),);},
                        ), ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}