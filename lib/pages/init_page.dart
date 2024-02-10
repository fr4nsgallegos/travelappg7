import 'package:flutter/material.dart';
import 'package:travelappg7/widgets/welcome_widget.dart';
import 'package:getwidget/getwidget.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFCarousel(
        height: MediaQuery.of(context).size.height,
        hasPagination: true,
        activeIndicator: Colors.blue,
        enlargeMainPage: true,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 4),
        initialPage: 2,
        reverse: true,
        enableInfiniteScroll: true,
        items: [
          WelcomeWidget(
              title: "Viaja",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue consectetur ante eu lobortis. Phasellus tempor ligula neque, ut tincidunt dolor ultricies vitae. Nam aliquet scelerisque nisi. Vestibulum placerat orci risus, id pretium mi malesuada sed",
              color: Colors.orange,
              pathAsset: "assets/icons/avion.png"),
          WelcomeWidget(
              title: "Agenda tus viajes",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue consectetur itae. Nam aliquet scelerisque nisi. Vestibulum placerat orci risus, id pretium mi malesuada sed",
              color: Colors.cyan,
              pathAsset: "assets/icons/agregar.png"),
          WelcomeWidget(
              title: "Imprime tus tickets",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue consectetur ante eu lobortis",
              color: Colors.red,
              pathAsset: "assets/icons/print.png"),
        ],
      ),
    );
  }
}
