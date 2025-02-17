import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: ''),
    );  
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
      ),
       body: Column(
      children: [
        Text(
          'Welcome to',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          'Reminders',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primera columna de iconos
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.timer_outlined, color: Colors.green),
                  Icon(Icons.flag, color: Colors.green),
                ],
              ),
              // Segunda columna de iconos (Send y Camera)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.camera_alt, color: Colors.green),
                  Icon(Icons.send, color: Colors.green),
                ],
              ),
              SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text(
                  'Quick Creation',
                  style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Simple type in your list, ask Siri, or add',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                Text(
                  'a reminder from your Calendar app.',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primera columna de iconos
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.local_grocery_store, color: Colors.deepOrange,size: 35),
                ],
              ),
              
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text(
                  'Grocery Shopping',
                  style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Create a Grocery List that',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                Text(
                  'automatically sorts items you add by',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                Text(
                  'category.',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primera columna de iconos
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.people, color: Color(0xFFE5BE01),size: 35),
                ],
              ),
              
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text(
                  'Easy Sharing',
                  style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Colaborate on a list, and even assign',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                Text(
                  'individual tasks.',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primera columna de iconos
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.topic_sharp, color: Colors.blueAccent),
                  Icon(Icons.topic_sharp, color: Colors.blueAccent),
                ],
              ),
              // Segunda columna de iconos (Send y Camera)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.topic_sharp, color: Colors.blueAccent),
                  Icon(Icons.topic_sharp, color: Colors.blueAccent),
                ],
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text(
                  'Powerful Organization',
                  style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Create a new lists to match your needs,',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                Text(
                  'categorize reminders with tags, and',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                Text(
                  'manage reminders around your work,',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
                Text(
                  'flow with Smart Lists.',
                  style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),  
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
      ],
    ),
  );
}
}