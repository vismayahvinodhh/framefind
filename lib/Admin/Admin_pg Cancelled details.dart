import 'package:flutter/material.dart';
import 'package:framefind/Admin/Admin_pg%20Cancelled.dart';

class Admin_Pgcancelled_details extends StatelessWidget {
  const Admin_Pgcancelled_details({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown.shade300 , // Brown background color
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.brown.shade300,
          leading: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Admin_CancelledPg();
            },));
          },
            child:  Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 300,
            padding:  EdgeInsets.all(80),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.shade300,
                  child: Image(image: AssetImage("assets/admin.png"))
                ),
                 SizedBox(height: 10),
                 Text(
                  'NAME',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Row(
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Place',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Time',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
