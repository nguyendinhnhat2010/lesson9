import 'package:momentum/momentum.dart';
import 'package:lesson9/models/gamemodel.dart';

class GameController extends MomentumController<GameModel> {
  final words = ['swift', 'android', 'flutter'];
  int currentWordIndex = 0;

  @override
  GameModel init() {
    return GameModel(
      this,
      word: words[currentWordIndex],
    );
  }

  void nextWord() {
    currentWordIndex += 1;
    model.update(word: words[currentWordIndex]);
  }
}
