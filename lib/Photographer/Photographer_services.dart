import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:framefind/Photographer/Photographer_Home.dart';

class Photographer_Services extends StatefulWidget {
  @override
  _Photographer_ServicesState createState() => _Photographer_ServicesState();
}

class _Photographer_ServicesState extends State<Photographer_Services> {
  List<String> services = [
    "Newborn Shoots",
    "Festivals",
    "Wedding",
    "Maternity",
    "Prewedding"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Photographer_home();
              },
            ));
          },
        ),
        title: Text(
          "Services",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          services[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.delete,
                          color: Colors.black,
                        ), // Delete icon without functionality
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            backgroundColor: Colors.brown,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Add_Service();
                },
              );
            },
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
class Add_Service extends StatefulWidget {
  const Add_Service({super.key});

  @override
  State<Add_Service> createState() => _Add_ServiceState();
}

class _Add_ServiceState extends State<Add_Service> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.brown.shade300,
      title: Text(
        'Add service',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10)),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a service name';
              }
              return null;
            },
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Photographer_Services();
                },));
              },
                child: Container(
                  width: 250.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),

        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}

