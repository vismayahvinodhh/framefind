import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:framefind/Photographer/Photographer_notification.dart';

class Photographer_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade300,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Photographer_notification();
                },));
              },
                  child: Icon(Icons.notifications, color: Colors.black)),
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(20),
            ),
            tabs: [
              Tab(
                child: Container(
                  height: 60,
                  width: 250,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Requests',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child: Center(
                    child: Text(
                      'Accepted',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Photographer_request(),
          Photographer_accepted(),
        ]),
      ),
    );
  }
}

class Photographer_request extends StatefulWidget {
  const Photographer_request({super.key});

  @override
  State<Photographer_request> createState() => _Photographer_requestState();
}

class _Photographer_requestState extends State<Photographer_request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: AssetImage("assets/user2.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                // Right Side: Category, Date, Time, Place
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Date",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Time",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Place",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Photographer_accepted extends StatefulWidget {
  const Photographer_accepted({super.key});

  @override
  State<Photographer_accepted> createState() => _Photographer_acceptedState();
}

class _Photographer_acceptedState extends State<Photographer_accepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, color: Colors.black),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text("Newborn Shoots"),
                      Text("Date"),
                      Text("Time"),
                      Text("Place"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Payment pending",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
