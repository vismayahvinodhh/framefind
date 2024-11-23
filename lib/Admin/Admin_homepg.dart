import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_dashboard.dart';

import 'Admin_Photographer.dart';

class AdminHomePg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0), // Moves content down
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Admin_Dashboard();
                          }));
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          height: 40,
                          width: 160,
                          color: Colors.brown,
                          child: const Center(
                            child: Text(
                              'Photographers',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/admin.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Add space between header and list
            Expanded(
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Admin_Photographer();
                },));
              },
                child: ListView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: ListTile(
                        tileColor: Colors.grey[200],
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/admin.png', // Replace with your desired image
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: const Text(
                          'Name:',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Category:',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Mobile Number:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
