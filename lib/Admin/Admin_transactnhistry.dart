import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_dashboard.dart';

import 'Admin_paymentdetails.dart';

class Admin_transactionhistory extends StatelessWidget {
  const Admin_transactionhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: Padding(
          padding:  EdgeInsets.only(top: 20),
          child:  Text(
            "TRANSACTION HISTORY",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        centerTitle: true,
        leading: InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Admin_Dashboard();
          },));
        },
            child:  Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding:  EdgeInsets.only(top: 10, right: 10),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/admin.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Admin_paymentdetails();
                  },
                ));
              },
              child: Card(
                margin:  EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                child: Padding(
                  padding:  EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children:  [
                          Text(
                            "Name ➔ ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Photographer Name"),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Text("10/11/2024"),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Text("Category"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "₹ 599/-",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin:  EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Text(
                          "Name ➔ ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Photographer Name"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("10/11/2024"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("Category"),
                      ],
                    ),
                     SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Text(
                          "₹ 2000/-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin:  EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Text(
                          "Name ➔ ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Photographer Name"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("10/11/2024"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("Category"),
                      ],
                    ),
                     SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Text(
                          "₹ 2000/-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin:  EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Text(
                          "Name ➔ ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Photographer Name"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("10/11/2024"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("Category"),
                      ],
                    ),
                     SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Text(
                          "₹ 2000/-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin:  EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Padding(
                padding:  EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Text(
                          "Name ➔ ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Photographer Name"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("10/11/2024"),
                      ],
                    ),
                     SizedBox(height: 5),
                    Row(
                      children:  [
                        Text("Category"),
                      ],
                    ),
                     SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Text(
                          "₹ 2000/-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
