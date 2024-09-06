import 'package:flutter/material.dart';

class Score extends StatefulWidget {
  final String player;
  final int score;

  const Score({super.key, required this.player, required this.score});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.player),
        Text(
          widget.score.toString(),
          style: const TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
