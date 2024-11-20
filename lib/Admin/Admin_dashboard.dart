import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Admin_Dashboard extends StatefulWidget {
  const Admin_Dashboard({super.key});

  @override
  State<Admin_Dashboard> createState() => _Admin_DashboardState();
}

class _Admin_DashboardState extends State<Admin_Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade300,
        body: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Dashboard",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, bottom: 10),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/admin.png"),
              radius: 22,
            ),
          ),
          Row(
            children: [
              Card(
                  color: Colors.white,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 120,
                        width: 150,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '  40 ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),),),
              Card(
                  color: Colors.white,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 120,
                        width: 150,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '  99\nPhotographers',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      )))
            ],
          ),
          Row(
            children: [
              Card(
                child: Card(
                    color: Colors.white,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 120,
                          width: 150,
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            '  12\nPayments',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ))),
              ),
              Card(
                  color: Colors.white,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 120,
                        width: 150,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '  8\nCancelled',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      )))
            ],
          ),
          Row(children: [
            Card(
              child: Card(
                  color: Colors.white,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 120,
                        width: 150,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '  66\nNotifications',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ))),
            ), Card(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 120,
                      width: 150,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '  12\nFeedbacks',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )))
          ]),
          Row(children: [
            Card(
              child: Card(
                  color: Colors.white,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 120,
                        width: 150,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          '  16\nRatings',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ))),
            ), Card(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                        height: 120,
                        width: 150,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  Text(
                          '  Log Out',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                    )))
          ])
        ]));
  }
}
