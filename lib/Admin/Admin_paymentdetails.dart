import 'package:flutter/material.dart';



class Admin_paymentdetails extends StatelessWidget {
  const Admin_paymentdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        elevation: 0,
        leading: IconButton(
          icon:  Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Profile Section
            Container(
              padding:  EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade300,
                    child:Image(image: AssetImage("assets/admin.png")
                    ),
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
                   Text(
                    "Mobile Number",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                   SizedBox(height: 16),
                  // Amount
                   Text(
                    "₹ 599",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                   SizedBox(height: 8),
                  // Completed Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_circle, color: Colors.green, size: 20),
                       SizedBox(width: 8),
                       Text(
                        "Completed",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 8),
                  // Date and Time
                   Text(
                    "Date, Time",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                   SizedBox(height: 16),
                   Divider(color: Colors.grey),
                   SizedBox(height: 8),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "UPI TRANSACTION ID",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                   SizedBox(height: 4),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "123457689798",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                   SizedBox(height: 16),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "To: DAVID K",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "david@okicici",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                   SizedBox(height: 8),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "From: JOHN",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "john",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Spacer(),
            // Done Button

             SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
