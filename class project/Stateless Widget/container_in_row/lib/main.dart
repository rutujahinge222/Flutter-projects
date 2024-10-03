import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Column Container App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height:100,
                width: 200,
                color:Colors.pink,
              ),
              Container(
                height:100,
                width: 200,
                color:Colors.green,
              ),
              Container(
                height:100,
                width: 200,
                color:Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
