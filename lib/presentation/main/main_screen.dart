import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';
import 'package:score_board_app/presentation/widgets/player_widget.dart';
import 'package:score_board_app/presentation/widgets/score_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerProvider = Provider.of<ControllerProvider>(context);

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
              const Expanded(
                flex: 1,
                child: Row(children: <Widget>[
                  Expanded(child: Text('control')),
                ]),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Expanded(
                        flex: 1, child: ScoreWidget(PlayerType.blue)),
                    const Expanded(
                        flex: 2, child: PlayerWidget(PlayerType.blue)),
                    Expanded(
                      flex: 2,
                      child: Text(
                          '${controllerProvider.getPlayerScore(PlayerType.red)}'),
                    ),
                    const Expanded(flex: 1, child: ScoreWidget(PlayerType.red)),
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
