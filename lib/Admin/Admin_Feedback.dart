import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_dashboard.dart';

class Admin_feedback extends StatelessWidget {
  const Admin_feedback({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown.shade300,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Action when the back arrow is pressed
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Admin_Dashboard();
              },));
            },
          ),
          title: Center(
            child: Text(
              'FEEDBACKS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.brown.shade300, // Match the header color
        ),
        body: ListView.builder(
          itemCount: 10, // Number of feedback items
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: const Image(
                      image: AssetImage("assets/admin.png"),
                    ),
                  ),
                  title: const Text(
                    'NAME',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Feedback'),
                      Text('Username'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
