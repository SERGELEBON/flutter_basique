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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Les widget de bases",
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(Icons.home),
          actions: [
            Icon(Icons.search),
          ],
          elevation: 50,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text("Salut de base de base de base"),
            Container(
              color: Colors.red,
              height: 32,
            ),
            Icon(
              Icons.add,
              color: Colors.orange,
            ),
          ],
        ));
  }
}
