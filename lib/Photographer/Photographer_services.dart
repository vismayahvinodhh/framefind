import 'package:flutter/material.dart';
import 'package:framefind/Photographer/Photographer_Home.dart';
import 'package:framefind/Photographer/Photographer_addService.dart';

class Photographer_Service extends StatefulWidget {
  @override
  _Photographer_ServiceState createState() => _Photographer_ServiceState();
}

class _Photographer_ServiceState extends State<Photographer_Service> {
  final List<String> shoots = [
    "Newborn Shoots",
    "Festivals",
    "Wedding",
    "Maternity",
    "Prewedding"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) {
           return Photographer_home();
         },));
          },
        ),
        title: Text(
          "Shoots",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: shoots.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: Text(
                        shoots[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            shoots.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Photographer_addService();
                },));
              },
              backgroundColor: Colors.brown,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Service page is active
        onTap: (index) {
          // Handle navigation
        },
        items: [
          BottomNavigationBarItem(
            icon:

            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Photographer_home();
              },));
            },
                child: Icon(Icons.camera_alt)),
            label: 'Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rating',
          ),
        ],
      ),
    );
  }
}
