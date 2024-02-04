import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRAVEL APP"),
      ),
      body: Column(
        children: [
          Container(
            width: 160,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Colors.red,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.40),
                  BlendMode.srcATop,
                ),
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://st2.depositphotos.com/4035913/6964/i/950/depositphotos_69640011-stock-photo-venice-italy.jpg"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.40),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        "NEW",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
