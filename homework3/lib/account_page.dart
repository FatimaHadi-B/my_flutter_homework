import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الحساب"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "بيانات حسابك ",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
