import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_dashboard.dart';

class Admin_Photographer extends StatefulWidget {
  const Admin_Photographer({super.key});

  @override
  State<Admin_Photographer> createState() => _Admin_PhotographerState();
}

class _Admin_PhotographerState extends State<Admin_Photographer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA28672), // Background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Admin_Dashboard();
              },
            ));
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              width: 350,
              height: 700,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.brown,
                    child: Image(
                      image: AssetImage("assets/admin.png"),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Photographer Name
                  Text(
                    "Photographer Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "Username",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                      decoration: InputDecoration(
                    hintText: "username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                          decoration: InputDecoration(
                        hintText: "00000",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                      Row(
                        children: [
                          Text(
                            "email",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                          decoration: InputDecoration(
                        hintText: "example@gmail.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                      Row(
                        children: [
                          Text(
                            "Work experiance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                          decoration: InputDecoration(
                        hintText: "experiance",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                      Row(
                        children: [
                          Text(
                            "Company Name/Freelancer",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                          decoration: InputDecoration(
                        hintText: "company name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                      Row(
                        children: [
                          Text(
                            "Your location",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                          decoration: InputDecoration(
                        hintText: "Enter your location",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                            ),
                            child: Center(
                                child: Text(
                              'Accept',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                            ),
                            child: Center(
                                child: Text(
                                  'reject',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
