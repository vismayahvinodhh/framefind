import 'package:flutter/material.dart';


class User_advancepaymnt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300, // Brown color
        elevation: 0,
        title: Text(
          'Advance Payment',
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
              child: Icon(Icons.person, size: 40, color: Colors.grey.shade700),
            ),
            SizedBox(height: 16),
            Text(
              'Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '2+ year experience',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Available',
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),


            SizedBox(height: 80),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Amount',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              initialValue: '2000/-',
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.currency_rupee),

              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB29076), // Brown color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text(
                'Payment',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
