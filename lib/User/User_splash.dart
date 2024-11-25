import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import 'User_Cover.dart';

class User_Splash extends StatefulWidget {
  const User_Splash({super.key});

  @override
  State<User_Splash> createState() => _User_SplashState();
}

class _User_SplashState extends State<User_Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Center Logo
          Center(
            child: Image(
              image: AssetImage("assets/framefindlogo.png"),
              width: 450,
              height: 450,
            ),
          ),

          // Container at the bottom
          Positioned(
            bottom: 30, // Adjust the distance from the bottom
            left: 20, // Align left
            right: 20, // Align right
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return User_coverpage();
                  },
                ));
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CONTINUE..",
                      style: GoogleFonts.poppins( // Use Google Fonts here
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
