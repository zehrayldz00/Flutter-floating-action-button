import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextField(
              decoration: InputDecoration(
                hintText: "Yazınız."
              ),
            ),
            FloatingActionButton.extended(
              onPressed:(){
              print("Fab2 tıklandı.");
              },
              label:Text("Fab"),
              icon: Icon(Icons.audiotrack),
              backgroundColor: Color(0xffc8dab1),
              foregroundColor: Color(0xffa2c17b),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          print("Fab1 tıklandı.");
        },
        tooltip: 'Fab1',
        child: const Icon(Icons.audiotrack),
        backgroundColor: Color(0xffe8bcd7),
        foregroundColor: Color(0xffd37db2),
      ),
    );
  }
}
