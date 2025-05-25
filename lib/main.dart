import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbed Profile App',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: MyTabbedPage(),
    );
  }
}

class MyTabbedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: "Intro"),
              Tab(icon: Icon(Icons.school), text: "Education"),
              Tab(icon: Icon(Icons.sports_basketball), text: "Hobbies"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(text: "Hello! I'm ", style: TextStyle(fontWeight: FontWeight.w400)),
                    TextSpan(text: "Muhammad Awab Sial\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    TextSpan(text: "A passionate student of ",),
                    TextSpan(text: "Computer Science", style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(text: " who loves coding and innovation."),
                  ],
                ),
              ),
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(text: "BS Computer Science\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    TextSpan(text: "Bahria University, Islamabad Campus\n"),
                    TextSpan(text: "Batch: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "Fall 2022\n"),
                    TextSpan(text: "Currently in ",),
                    TextSpan(text: "3rd Year", style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(text: "I enjoy:\n\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    TextSpan(text: "• Competitive Programming\n"),
                    TextSpan(text: "• Trekking & Nature\n"),
                    TextSpan(text: "• Building Innovative Projects\n"),
                    TextSpan(text: "• Exploring AI & Flutter Dev\n"),
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
