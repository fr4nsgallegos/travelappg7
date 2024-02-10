import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelappg7/widgets/card2_widget.dart';
import 'package:travelappg7/widgets/card3_widget.dart';
import 'package:travelappg7/widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  Future<void> _saveContador() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('counter', contador);
  }

  Future<void> _getContador() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    contador = _prefs.getInt('counter') ?? 0;
    setState(() {});
  }

  Future<void> setCerrarApp() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setBool("yaInicio", false);
    print(_prefs.get("yaInicio"));
  }

  @override
  void initState() {
    _getContador();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador += 1;
          _saveContador();
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
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
              Center(
                child: Text(
                  contador.toString(),
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () async {
                      await setCerrarApp();
                      exit(0);
                      // setCerrarApp().then((value) {
                      //   exit(0);
                      // });
                    },
                    child: Text("CERRAR APP"),
                  ),
                ),
              ),
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
              Card2Widget(),
              Card2Widget(),
              Card2Widget(),
              Card2Widget(),
              Card2Widget(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Card3Widget(),
                    Card3Widget(),
                    Card3Widget(),
                    Card3Widget(),
                    Card3Widget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
