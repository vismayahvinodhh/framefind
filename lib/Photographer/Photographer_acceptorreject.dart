import 'package:flutter/material.dart';
import 'package:framefind/Photographer/Photographer_StatusCompleted.dart';

class Photographer_Accept_or_reject extends StatelessWidget {
  const Photographer_Accept_or_reject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Profile Section
            Container(
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade300,
                    child: Image(image: AssetImage("assets/user2.png")),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "Place",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  // Amount
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  // Completed Status
                  Row(
                    children: [
                      Text(
                        "Time",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // Date and Time
                  Row(
                    children: [
                      Text(
                        "Contact Number",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  Row(
                    children: [
                      Text(
                        "Theme",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Accept Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Accept action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(
                    Icons.check,
                    size: 35,
                    color: Colors.green,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Photographer_StatusCompleted();
                  },));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(
                    Icons.close,
                    size: 35,
                    color: Colors.red,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
