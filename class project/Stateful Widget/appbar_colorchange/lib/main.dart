import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar color App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: AppbarColorApp(),
    );
  }
}

class AppbarColorApp extends StatefulWidget {
  const AppbarColorApp({super.key});

  @override
  State<AppbarColorApp> createState() => _AppBarColorAppState();
}

class _AppBarColorAppState extends State<AppbarColorApp> {
  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar App"),
        centerTitle: true,
        backgroundColor: (colorChange) ? Colors.blue : Colors.indigo,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Change AppBar color"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (colorChange) {
            colorChange = false;
          } else {
            colorChange = true;
          }
          setState(() {
            
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
