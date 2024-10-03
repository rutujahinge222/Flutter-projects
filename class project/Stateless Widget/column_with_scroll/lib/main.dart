import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title:const Text(
              "Column",
              style: TextStyle(fontSize: 32,fontWeight: FontWeight.w300),
              ),
              centerTitle: true,
              backgroundColor: Colors.purple,
          ),
          body:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  ""),
                  Container(
                    height:250,
                    width:250,
                    color:Colors.purple,
                  )
              ],),
          )
      
      ),
    );
  }
}
