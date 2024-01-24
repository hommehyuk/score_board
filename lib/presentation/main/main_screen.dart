import 'package:flutter/material.dart';

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
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
