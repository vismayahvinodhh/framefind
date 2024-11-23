import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_Addnotification extends StatefulWidget {
  const Admin_Addnotification({super.key});

  @override
  State<Admin_Addnotification> createState() => _Admin_AddnotificationState();
}

class _Admin_AddnotificationState extends State<Admin_Addnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.brown.shade300,
            actions: [Icon(Icons.arrow_back)],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Enter Matter",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
