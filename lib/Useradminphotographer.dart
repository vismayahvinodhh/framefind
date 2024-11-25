import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_login.dart';
import 'package:framefind/User/User_splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Photographer Circle
          Positioned(
            top: 130,
            left: 40,
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(70),
              ),
              child: const Center(
                child: Text(
                  "PHOTOGRAPHER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // Admin Circle
          Positioned(
            top: 250,
            right: 60,
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Admin_Login();
              },));
            },
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(70),
                ),
                child: const Center(
                  child: Text(
                    "ADMIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // User Circle
          Positioned(
            top: 400,
            left: 40,
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return User_Splash();
              },));
            },
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(70),
                ),
                child: const Center(
                  child: Text(
                    "USER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Logo at the bottom center
          Positioned(
            bottom: 19, // Adjust bottom padding as needed
            left: MediaQuery.of(context).size.width / 3 - 34, // Center horizontally
            child: Image.asset(
              'assets/logo.png', // Replace with your actual asset path
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
