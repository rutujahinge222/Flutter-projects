import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Players',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
useMaterial3: true,
),
home: PlayersApp(),
);
}
}

class PlayersApp extends StatefulWidget {
@override
State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
int _counter = 0;
List<String> playerList = <String>[
"https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
"https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
"https://imgeng.jagran.com/images/2023/apr/Sachin11682274529876.jpg",
"https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg",
"https://images.indianexpress.com/2023/09/Rahul-15.jpg",
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Theme.of(context).colorScheme.inversePrimary,
title: const Text("Players App"),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[  
  Image.network(
  playerList[_counter],
  height:300,
),
],
),
),
floatingActionButton: FloatingActionButton(
  onPressed: (){
    setState(() {
  if(_counter<playerList.length -1){
    _counter++;
  }else{
    _counter=0;
  }
});
},
tooltip:'Increment',
child:const Icon(Icons.add),
),
);
}
}