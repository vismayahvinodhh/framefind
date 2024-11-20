import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_HomeUser extends StatefulWidget {
  const Admin_HomeUser({super.key});

  @override
  State<Admin_HomeUser> createState() => _Admin_HomeUserState();
}

class _Admin_HomeUserState extends State<Admin_HomeUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.brown.shade300,
      body: Padding(
        padding: const EdgeInsets.only(left: 330,top: 40),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/admin.png"),
              radius: 27,
            ),
          ],
        ),
      ),
    );
  }
}
