import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_dashboard.dart';
import 'package:framefind/Photographer/Photographer_Home.dart';

class Photographer_rating extends StatefulWidget {
  const Photographer_rating({super.key});

  @override
  State<Photographer_rating> createState() => _Photographer_ratingState();
}

class _Photographer_ratingState extends State<Photographer_rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Photographer_home();
              },
            ));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 95),
          child: Text(
            "Rating",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),actions: [CircleAvatar(radius: 22,
          child: Image(image: AssetImage("assets/pg_profile.png")))],
      ),
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "The rating given to You",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Adjust this for multiple items
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 3,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                      AssetImage("assets/admin.png"),
                                      radius: 30,
                                    ),
                                    SizedBox(height: 8), // Spacing below avatar
                                    Text(
                                      "Name", // Text under the profile picture
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Newborn Shoot",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 8), // Spacing
                                      Text(
                                        "Date: 12/11/2023",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4), // Spacing
                                      Text(
                                        "Time: 10:30 AM",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4), // Spacing
                                      Text(
                                        "Place: Central Park",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4), // Spacing
                                     
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star_border, color: Colors.amber),
                                  ],
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "4/5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
