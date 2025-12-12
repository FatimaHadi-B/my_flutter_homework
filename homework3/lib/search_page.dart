import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("البحث"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "هذه صفحة البحث ",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
