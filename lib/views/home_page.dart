import 'dart:math';

import 'package:desafio/widgets/circle_avatar_radius_50.dart';
import 'package:desafio/widgets/row_space_around.dart';
import 'package:desafio/widgets/score.dart';
import 'package:desafio/widgets/title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int playerScore = 0;
  int computerScore = 0;
  String imagePath = "assets/images/interrogacao.png";
  String playMessage = ":|";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text("Pedra, Papel, Tesoura")),
      ),
      body: PageView(children: [
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(children: [
            const CustomTitle(title: "Sua jogada."),
            RowSpaceAround(children: [
              GestureDetector(
                  onTap: () {
                    playGame("paper");
                  },
                  child: const CircleAvatarRadius50(
                      imagePath: "assets/images/papel.png")),
              GestureDetector(
                  onTap: () {
                    playGame("rock");
                  },
                  child: const CircleAvatarRadius50(
                      imagePath: "assets/images/pedra.png")),
              GestureDetector(
                onTap: () {
                  playGame("scissors");
                },
                child: const CircleAvatarRadius50(
                    imagePath: "assets/images/tesoura.png"),
              ),
            ]),
          ]),
          Column(children: [
            const CustomTitle(title: "Jogada do computador."),
            CircleAvatarRadius50(imagePath: imagePath),
          ]),
          Column(children: [
            const CustomTitle(title: "Resultado:"),
            Text(playMessage)
          ]),
          Column(children: [
            const CustomTitle(title: "Placar:"),
            Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)),
              child: RowSpaceAround(children: [
                Score(player: "Você:", score: playerScore),
                Score(player: "PC:", score: computerScore),
              ]),
            )
          ])
        ]),
      ]),
    );
  }

  void playGame(String playerOption) {
    final String computerPlay = this.computerPlay();

    if (playerOption == computerPlay) {
      setState(() {
        playMessage = "Empatou... :|";
      });
    } else if (playerOption == "rock" && computerPlay == "paper") {
      setState(() {
        playMessage = "Você perdeu!! :(";
        computerScore += 1;
      });
    } else if (playerOption == "rock" && computerPlay == "scissors") {
      setState(() {
        playMessage = "Você ganhou!! :)";
        playerScore += 1;
      });
    } else if (playerOption == "paper" && computerPlay == "scissors") {
      setState(() {
        playMessage = "Você perdeu!! :(";
        computerScore += 1;
      });
    } else if (playerOption == "paper" && computerPlay == "rock") {
      setState(() {
        playMessage = "Você ganhou!! :)";
        playerScore += 1;
      });
    } else if (playerOption == "scissors" && computerPlay == "paper") {
      setState(() {
        playMessage = "Você ganhou!! :)";
        playerScore += 1;
      });
    } else if (playerOption == "scissors" && computerPlay == "rock") {
      setState(() {
        playMessage = "Você perdeu!! :(";
        computerScore += 1;
      });
    }
  }

  String computerPlay() {
    final int playNumber = Random().nextInt(3);

    switch (playNumber) {
      case 0:
        setState(() {
          imagePath = "assets/images/pedra.png";
        });
        return "rock";
      case 1:
        setState(() {
          imagePath = "assets/images/papel.png";
        });
        return "paper";
      case 2:
        setState(() {
          imagePath = "assets/images/tesoura.png";
        });
        return "scissors";
      default:
        return "";
    }
  }
}
