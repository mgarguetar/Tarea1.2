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
          'Welcome to Reminders',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 45),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primera columna de iconos
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.timelapse, color: Colors.green),
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
                  style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Simple type in your list, ask Siri, or add',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                Text(
                  'a reminder from your Calendar app.',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}