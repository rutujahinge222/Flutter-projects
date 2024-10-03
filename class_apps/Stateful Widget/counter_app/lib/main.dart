import 'package:flutter/material.dart';

void main() {
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget {
  const ToggleColor({super.key});

@override
State createState() => _ToggleColorState();
}

class _ToggleColorState extends State{
  bool changecolor=true;
  @override
  Widget build (BuildContext Context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:const Text("ToggleColor"),
          centerTitle: true,
          backgroundColor: changecolor ? Colors.blue :Colors.yellow,
        ),
        body:Center(
          child:Container(
            height:150,
            width:200,
            color:changecolor ? Colors.yellow :Colors.purple,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(changecolor==true){
              changecolor=false;
            }else{
              changecolor=true;
            }
            setState(() {
              
            });
          },
        ),
      ),
    );

  }
}