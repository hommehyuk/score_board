import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';

class PlayerWidget extends StatelessWidget {
  final PlayerType playerType;

  const PlayerWidget(this.playerType);

  @override
  Widget build(BuildContext context) {
    final controllerProvider = Provider.of<ControllerProvider>(context);

    double dynamicFontSizeCriterion = MediaQuery.of(context).size.height;
    var textStyle = const TextStyle(color: Colors.white);
    Color bgColor = Colors.blue;

    if (playerType == PlayerType.red) {
      bgColor = Colors.red;
    }

    return Container(
      color: bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Expanded(
            flex: 1,
            child: TextField(
              style: textStyle
                  .merge(TextStyle(fontSize: dynamicFontSizeCriterion * 0.035)),
              textAlign: TextAlign.center,
              decoration:
                  const InputDecoration.collapsed(hintText: 'Player Name'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '${controllerProvider.getPlayerScore(this.playerType)}',
              style: textStyle
                  .merge(TextStyle(fontSize: dynamicFontSizeCriterion * 0.1)),
            ),
          ),
          const Expanded(flex: 2, child: Text('c')),
        ],
      ),
    );
  }
}
