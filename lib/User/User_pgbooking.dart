import 'package:flutter/material.dart';
import 'package:framefind/User/User_homepage.dart';

class User_pg_booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300, // Brown color
        elevation: 0,
        title: Text(
          'Needed Service',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey.shade300,
                child: Image(image: AssetImage("assets/pg_profile.png"))),
            SizedBox(height: 16),
            Text(
              'Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Contact Number',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              '2+ year experience',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Available',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Category',
                border: OutlineInputBorder(),
              ),
              items: [
                DropdownMenuItem(
                    value: 'Newborn Shoot', child: Text('Newborn Shoot')),
                DropdownMenuItem(
                    value: 'Wedding Shoot', child: Text('Wedding Shoot')),
                DropdownMenuItem(
                    value: 'Event Photography',
                    child: Text('Event Photography')),
                DropdownMenuItem(
                    value: 'Portrait Photography',
                    child: Text('Portrait Photography')),
                DropdownMenuItem(
                    value: 'Festival Photography',
                    child: Text('Festival Photography')),
              ],
              onChanged: (value) {},
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Place',

                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Theme (optional)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return User_Homepg();
                },));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB29076), // Brown color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text(
                'Request',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
