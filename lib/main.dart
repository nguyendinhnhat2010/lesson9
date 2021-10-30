import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:lesson9/controllers/gamecontroller.dart';
import 'package:lesson9/views/gameview.dart';

void main() {
  runApp(
    Momentum(
      controllers: [GameController()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter MVC Momentum",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text("Flutter MVC Momentum"),
          ),
        ),
        body: const GameView(),
      ),
    );
  }
}
