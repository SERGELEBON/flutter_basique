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
      backgroundColor: Colors.white,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(
            height: 10,
            thickness: 1,
            indent: 1,
            endIndent: 2,
            color: Colors.black,
          ),

          Text("Salut de base de base de base"),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 1,
            endIndent: 2,
            color: Colors.black,
          ),
          Spacer(),
          Container(
            color: Colors.black45,
            height: 32,
            child: Center(
              child: Text("C'est une container rouge"),
            ),
          ),
          Container(
            child: const Center(
              child: Text("C'est un container jaune"),
            ),
          ),
          Container(
            color: Colors.black45,
            height: 32,
            child: Center(
              child: Text("C'est une container rouge"),
            ),
          ),
          //const SizedBox(height: 16),
          Container(
            child: const Center(
              child: Text("C'est un container jaune"),
            ),
          ),
          Container(
            color: Colors.black45,
            height: 32,
            child: const Center(
              child: Text("C'est un container normalement blancs"),
            ),
          ),
          Container(
            child: const Center(
              child: Text("C'est un container jaune"),
            ),
          ),
          const SizedBox(height: 16),
          Icon(
            Icons.add_a_photo,
            color: Colors.orange,
            size: 50,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
