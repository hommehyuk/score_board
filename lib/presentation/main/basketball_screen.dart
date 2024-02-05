import 'package:flutter/material.dart';
import 'package:score_board_app/presentation/widgets/control_section.dart';
import 'package:score_board_app/presentation/widgets/player_controller.dart';
import 'package:score_board_app/presentation/widgets/player_widget.dart';
import 'package:score_board_app/presentation/widgets/score_widget.dart';

class BasketBallScreen extends StatefulWidget {
  const BasketBallScreen({super.key});

  @override
  State<BasketBallScreen> createState() => _BasketBallScreenState();
}

class _BasketBallScreenState extends State<BasketBallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Basketball',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 55,
          child: const Column(
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
