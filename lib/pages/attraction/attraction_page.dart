import 'package:flutter/material.dart';
import 'package:rock_in_rio_app/pages/attraction/widgets/band_widget.dart';
import 'package:rock_in_rio_app/themes/app_colors.dart';

var atracttion = {
  "Iron Maiden": ["Espetaculo", "Fas", "NovoAlbum"],
  "Alok": ["influente", "Top", "Show"],
  "Justin Bieber": [
    "TopCharts",
    "Hits",
    "PrincipeDoPOP",
  ],
  "Guns N' Roses": ["Rock", "WelcomeToTheJungle", "Slash"],
  "Elton Jhon": ["Sir", "Piano", "RocketMan"],
};

class AttractionPage extends StatelessWidget {
  const AttractionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBg,
      appBar: AppBar(
        title: const Text(
          "Atrações",
          style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1),
        ),
      ),
      body: ListView.builder(
        itemCount: atracttion.length,
        itemBuilder: (BuildContext context, int index) {
          return BandWidget(
            index: index,
            info: atracttion,
          );
        },
      ),
    );
  }
}
