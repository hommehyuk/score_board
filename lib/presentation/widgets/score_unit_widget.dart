import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';

class ScoreUnitWidget extends StatelessWidget {
  final PlayerType playerType;
  final int varianceUnit;
  final Color backgroundColor;

  const ScoreUnitWidget({
    required this.playerType,
    required this.varianceUnit,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controllerProvider = Provider.of<ControllerProvider>(context);

    var textStyle = const TextStyle(color: Colors.white);

    return Container(
      child: Column(
        children: [
          Expanded(
            child: FittedBox(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  '+',
                  style: textStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FittedBox(child: Text('$varianceUnit', style: textStyle)),
          ),
          Expanded(
            flex: 1,
            child: FittedBox(
              child: TextButton(
                onPressed: () {},
                child: Text('-', style: textStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
