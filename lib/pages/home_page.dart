import 'package:flutter/material.dart';
import 'package:travelappg7/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.cyan,
        ),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "DiscountTour",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [CardWidget()],
      ),
    );
  }
}
