import 'package:flutter/material.dart';
import 'package:framefind/Photographer/Photographer_Home.dart';

class Photographer_feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Photographer_home();
            }));
          },
        ),
        backgroundColor: Colors.brown,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[300],
                    child: Image(image: AssetImage("assets/pg_profile.png")),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Edit Profile action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text('Edit Profile'),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // GridView Section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(), // Disable GridView's scrolling
                shrinkWrap: true, // Adjusts the size of GridView to fit content
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10, // Space between columns
                  mainAxisSpacing: 10, // Space between rows
                ),
                itemCount: 8, // Total items in grid
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
