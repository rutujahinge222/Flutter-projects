import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "India Flag",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("India Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width:5,
              color:Colors.brown,
            ),
            Column(
              children: [
                const SizedBox(
                  height:95,

                ),
            Container(
              width: 300,
              height: 45,
              color: Colors.orange,
            ),
            Container(
              width: 300,
              height: 45,
              color: Colors.white,
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/640px-Ashoka_Chakra.svg.png",
              ),
            ),
            Container(
              width: 300,
              height: 45,
              color: Colors.green,
            ),
          ],
            ),
          ],
        ),
      ),
    );
  }
}
