import 'package:flutter/material.dart';
import 'package:framefind/User/User_homepage.dart';
import 'package:lottie/lottie.dart';

class User_paymntSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Lottie.asset("assets/Animation - 1732556970002.json",
            width: 200,height: 200,repeat: false),

              SizedBox(height: 16),
              Text(
                'Completed',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the home page
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return User_Homepg();
                  },)); // Adjust this as needed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown, // Brown color
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(
                  'Back to home page',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
