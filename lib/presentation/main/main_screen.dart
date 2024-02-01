import 'package:flutter/material.dart';
import 'package:score_board_app/presentation/main/basketball_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScoreBoard'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              iconColor: Colors.lightBlue,
              focusColor: Colors.lightBlue,
              title: const Text('홈'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                );
              },
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.sports_basketball),
              iconColor: Colors.lightBlue,
              focusColor: Colors.lightBlue,
              title: const Text('농구'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BasketBallScreen(),
                  ),
                );
              },
              trailing: const Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BasketBallScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.sports_basketball,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
