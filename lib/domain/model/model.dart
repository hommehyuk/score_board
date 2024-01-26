import 'package:flutter/widgets.dart';

class PlayerData {
  int score = 0;
  int set = 0;

  final TextEditingController textEditingController = TextEditingController();

  PlayerData(this.score, this.set);
}
