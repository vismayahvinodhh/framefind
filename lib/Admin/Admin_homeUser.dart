import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_dashboard.dart';

import 'Admin_User.dart';

class Admin_homeUser extends StatelessWidget {
  const Admin_homeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Admin_Dashboard();
            },)); // Navigate back
          },
        ),

        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/admin.png"),
              backgroundColor: Colors.grey.shade200,
              radius: 20,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(height: 40,width: 140,
            color: Colors.brown.shade500,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                "Users",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of users
              itemBuilder: (context, index) {
                return InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Admin_User();
                  },));
                },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/admin.png"),
                            radius: 25,
                            backgroundColor: Colors.grey.shade200,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Location",
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                "Mobile Number",
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                "Email",
                                style: TextStyle(fontSize: 14, color: Colors.black),
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
    );
  }
}
