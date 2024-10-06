import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController nameController = TextEditingController();
  String? myName;
  List<String> playersList = [];
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.cyan,
            child: Image.network(
              "https://static-cse.canva.com/blob/1625993/ComposeStunningImages6.jpg",
            ),
          ),
        ),
      ),
    );
  }
}