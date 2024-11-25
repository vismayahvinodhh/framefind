import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Photographer_Coverpage.dart'; // Import Google Fonts

class Photograher_Splash extends StatefulWidget {
  const Photograher_Splash({super.key});

  @override
  State<Photograher_Splash> createState() => _Photograher_SplashState();
}

class _Photograher_SplashState extends State<Photograher_Splash> {
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
          // Align right
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Photographer_Cover();
                },
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 750,left: 92),
              child: Container(
                width: 180,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(15),
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