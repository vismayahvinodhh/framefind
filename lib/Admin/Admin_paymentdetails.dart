import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Admin_Paymentdetails extends StatefulWidget {
  const Admin_Paymentdetails({super.key});

  @override
  State<Admin_Paymentdetails> createState() => _Admin_PaymentdetailsState();
}

class _Admin_PaymentdetailsState extends State<Admin_Paymentdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA28672),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Card(
                child: Container(
                  height: 650,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  "DONE",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
