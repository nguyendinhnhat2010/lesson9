import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:lesson9/controllers/gamecontroller.dart';
import 'package:lesson9/models/gamemodel.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Click button to get next word"),
          MomentumBuilder(
            controllers: [GameController],
            builder: (context, snapshot) {
              var model = snapshot<GameModel>();
              return Text(
                '${model.word}',
                style: const TextStyle(fontSize: 30, color: Colors.teal),
              );
            },
          ),
          MomentumBuilder(
            controllers: [GameController],
            builder: (context, snapshot) {
              var model = snapshot<GameModel>();
              return Text(
                '${model.formatWord()}',
                style: const TextStyle(fontSize: 30, color: Colors.red),
              );
            },
          ),
          ElevatedButton(
            onPressed: Momentum.controller<GameController>(context).nextWord,
            child: const Text("Next Word"),
          ),
        ],
      ),
    );
  }
}
