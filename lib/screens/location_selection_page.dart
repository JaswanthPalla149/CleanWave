import 'package:flutter/material.dart';

import 'home_page.dart'; 

class LocationSelectionPage extends StatefulWidget {
  const LocationSelectionPage({super.key});

  
  @override
  LocationSelectionPageState createState() => LocationSelectionPageState();
}

class LocationSelectionPageState extends State<LocationSelectionPage> {
  String? yourlocation;

  final Map<String, String> locations = {
    'Tirupati': 'vamsi',
    'Yerpedu': 'jaswanth',
    'Venkatagiri': 'manoj',
  };

  void showLocationDialog() async {
    final selectedLocation = await showDialog<String>(
       context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select Location'),
          children: locations.keys.map((location) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, location);
              },
              child: Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.red),
                  const SizedBox(width: 8.0),
                  Text(location),],
              ),);
          }).toList(),
        );
      },
    );

    if (selectedLocation!= null) {
      setState(() {
        yourlocation = selectedLocation;});
      goHome();}
  }

  void goHome() {
    if (yourlocation != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(location: yourlocation!),),
      );
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Select Location',
        style:TextStyle(
          color: Colors.white,),
        ),
        centerTitle:true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/location.jpg'), 
                fit: BoxFit.cover, 
              ),
            ),
          ),
          Center(
              child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
            
                onPressed: showLocationDialog,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  minimumSize: const Size(200,50)),
                child: Text(
                  yourlocation ?? 'Select Location',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
