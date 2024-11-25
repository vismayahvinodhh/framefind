import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_dashboard.dart';
import 'package:framefind/Admin/Admin_pg%20Cancelled%20details.dart';

class Admin_CancelledPg extends StatelessWidget {
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
                    icon:  Icon(Icons.arrow_back, color: Colors.white),
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
                        padding:  EdgeInsets.only(top: 30),
                        child:  Center(
                          child: Text(
                            'REJECTED WORKS',
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
                ],
              ),
            ),
             SizedBox(height: 20), // Add space between header and list
            Expanded(
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Admin_Pgcancelled_details();
                },));
              },
                child: ListView.builder(
                  padding:  EdgeInsets.all(10.0),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(vertical: 3.0),
                      child: ListTile(
                        tileColor: Colors.grey[200],
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/admin.png', // Replace with your desired image
                            fit: BoxFit.cover,
                          ),
                        ),
                        title:  Text(
                          'Name',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Date',
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
