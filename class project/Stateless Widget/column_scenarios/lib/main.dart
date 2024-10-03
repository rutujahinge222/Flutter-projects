import 'package:flutter/material.dart';
void main() {
runApp(
const MainApp(),
);
}
class MainApp extends StatelessWidget {
const MainApp({super.key});
@override
Widget build(BuildContext context) {
print("Device width: ${MediaQuery.of(context).size.width}");
print("Device height: ${MediaQuery.of(context).size.height}");
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: const Text(
"Column Demo",
style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
),
centerTitle: true,
backgroundColor: Colors.blue,
),
body: Container(
width: MediaQuery.of(context).size.width,
color: Colors.red,
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,


// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.center,


// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.end,


// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,


// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,


// mainAxisAlignment: MainAxisAlignment.end ,
// crossAxisAlignment: CrossAxisAlignment.start,


// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.end,


// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.center,


// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.end,

children: [
Container(
height: 250,
width: 250,
color: Colors.purple,
),
],
),
),
),
);
}
}