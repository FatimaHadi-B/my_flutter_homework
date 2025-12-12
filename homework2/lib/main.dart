import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CvPage(),
    );
  }
}

class CvPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeef3f8),
      body: Center(
        child: Container(
          width: 340,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 12,
                spreadRadius: 3,
              ),
            ],
          ),

          // 👇👇 هنا أضفنا Scroll علشان ما يصير Overflow
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xff1e88e5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "CV",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 25),

                // Profile Picture
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xff42a5f5),
                ),

                SizedBox(height: 15),

                // Name
                Text(
                  "Your Name",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0d47a1),
                  ),
                ),

                SizedBox(height: 5),

                // Job Title
                Text(
                  "Developer",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),

                SizedBox(height: 20),

                // Email
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 8),
                    Text(
                      "example@gmail.com",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                // Phone
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 8),
                    Text(
                      "777777777",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Section: Skills
                _sectionTitle("Skills"),

                _sectionItem("Flutter Development"),
                _sectionItem("Problem Solving"),
                _sectionItem("Team Work"),
                _sectionItem("UI/UX Basics"),

                SizedBox(height: 20),

                // Section: Scientific Qualifications
                _sectionTitle("Scientific Qualifications"),

                _sectionItem("Bachelor’s Degree in IT"),
                _sectionItem("Diploma in Programming"),

                SizedBox(height: 20),

                // Section: Work Experience
                _sectionTitle("Work Experience"),

                _sectionItem("Internship at Tech Company"),
                _sectionItem("Freelance Mobile Developer"),
                _sectionItem("Worked on 5+ real projects"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Section Title
  Widget _sectionTitle(String text) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff1565c0),
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  // Section Item
  Widget _sectionItem(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3),
        child: Text(
          "• $text",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
