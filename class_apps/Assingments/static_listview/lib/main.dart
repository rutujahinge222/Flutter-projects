import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 72, 228, 176),
        ),
        body: ListView(
          children: [
            Image.network(
              "https://www.pennington.com/-/media/Project/OneWeb/Pennington/Images/blog/fertilizer/How-to-Have-a-Beautiful-Garden-in-Full-Sun/Colorful-flower-bed-og.jpg",
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
              "https://www.shutterstock.com/image-photo/garden-background-colorful-flowers-blooming-260nw-2475116907.jpg",
            ),
            GestureDetector(
              onTap: () {
                print("Button pressed");
              },
              child: Container(
                height: 50,
                color: Color.fromARGB(255, 103, 223, 157),
                child: const Text(
                  "Press me",
                  style: TextStyle(
              fontSize: 25,
            ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
