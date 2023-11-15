import 'package:about_me/home/widgtes/gradient.dart';
import 'package:about_me/home/widgtes/main_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          AnimatedGradient(
            width: MediaQuery.sizeOf(context).width,
            heigth: MediaQuery.sizeOf(context).height,
            firstColor: Theme.of(context).colorScheme.onSecondary,
            secondColor: Theme.of(context).colorScheme.secondary,
            duration: const Duration(seconds: 15),
          ),
          Align(
            alignment: Alignment.center,
            child: MainCard(),
          ),
        ],
      ),
    );
  }
}
