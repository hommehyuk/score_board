import 'package:flutter/material.dart';
import 'package:score_board_app/presentation/widgets/control_section.dart';
import 'package:score_board_app/presentation/widgets/player_controller.dart';
import 'package:score_board_app/presentation/widgets/player_widget.dart';
import 'package:score_board_app/presentation/widgets/score_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('ScoreBoard'),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 55,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(children: <Widget>[
                  Expanded(child: ControlSection()),
                ]),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(flex: 1, child: ScoreWidget(PlayerType.blue)),
                    Expanded(flex: 2, child: PlayerWidget(PlayerType.blue)),
                    Expanded(flex: 2, child: PlayerWidget(PlayerType.red)),
                    Expanded(flex: 1, child: ScoreWidget(PlayerType.red)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
