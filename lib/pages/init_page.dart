import 'package:flutter/material.dart';
import 'package:travelappg7/widgets/welcome_widget.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeWidget(
                title: "Viaja",
                description: "esta es la descrp",
                color: Colors.orange,
                pathAsset: "assets/icons/avion.png"),
          ],
        ),
      ),
    );
  }
}
