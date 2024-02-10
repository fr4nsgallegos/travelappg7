import 'package:flutter/material.dart';
import 'package:travelappg7/widgets/welcome_widget.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

//USANDO CAROUSEL SLIDER

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
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
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          autoPlay: true,
          enableInfiniteScroll: true,
          autoPlayCurve: Curves.easeInCubic,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}


// USANDO GFCAROUSEL DE GETWIDGET
// class InitPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GFCarousel(
//         height: MediaQuery.of(context).size.height,
//         hasPagination: true,
//         activeIndicator: Colors.blue,
//         enlargeMainPage: true,
//         autoPlay: true,
//         autoPlayAnimationDuration: Duration(seconds: 4),
//         initialPage: 2,
//         reverse: true,
//         enableInfiniteScroll: true,
//         items: [
//           WelcomeWidget(
//               title: "Viaja",
//               description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue consectetur ante eu lobortis. Phasellus tempor ligula neque, ut tincidunt dolor ultricies vitae. Nam aliquet scelerisque nisi. Vestibulum placerat orci risus, id pretium mi malesuada sed",
//               color: Colors.orange,
//               pathAsset: "assets/icons/avion.png"),
//           WelcomeWidget(
//               title: "Agenda tus viajes",
//               description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue consectetur itae. Nam aliquet scelerisque nisi. Vestibulum placerat orci risus, id pretium mi malesuada sed",
//               color: Colors.cyan,
//               pathAsset: "assets/icons/agregar.png"),
//           WelcomeWidget(
//               title: "Imprime tus tickets",
//               description:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue consectetur ante eu lobortis",
//               color: Colors.red,
//               pathAsset: "assets/icons/print.png"),
//         ],
//       ),
//     );
//   }
// }
