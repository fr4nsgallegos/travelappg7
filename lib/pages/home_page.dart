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
          color: Colors.black,
        ),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket,
              color: Colors.cyan,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find the best tour",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis finibus tincidunt libero, quis rhoncus leo tempor",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Country",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.cyan.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(20.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Row(
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/8520903/pexels-photo-8520903.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        width: MediaQuery.of(context).size.width / 4,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
