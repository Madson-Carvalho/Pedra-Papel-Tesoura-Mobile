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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Center(child: Text("Pedra, Papel, Tesoura")),
        ),
        body: PageView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  children: [
                    CustomTitle(title: "Sua jogada."),
                    RowSpaceAround(
                      children: [
                        CircleAvatarRadius50(
                            imagePath: "assets/images/papel.png"),
                        CircleAvatarRadius50(
                            imagePath: "assets/images/pedra.png"),
                        CircleAvatarRadius50(
                            imagePath: "assets/images/tesoura.png"),
                      ],
                    )
                  ],
                ),
                const Column(
                  children: [
                    CustomTitle(title: "Jogada do compuatdor."),
                    CircleAvatarRadius50(imagePath: "assets/images/papel.png"),
                  ],
                ),
                const Column(
                  children: [
                    CustomTitle(title: "Resultado:"),
                    Text("Você ganhou! :)")
                  ],
                ),
                Column(children: [
                  const CustomTitle(title: "Placar:"),
                  Container(
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                      child: const RowSpaceAround(
                        children: [
                          Score(player: "Você:", score: 5),
                          Score(player: "PC:", score: 5),
                        ],
                      ))
                ])
              ],
            ),
          ],
        ));
  }
}
