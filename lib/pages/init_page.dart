import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelappg7/pages/home_page.dart';
import 'package:travelappg7/pages/welcome_page.dart';

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool showWelcome = true;

  Future<void> _getYaInicio() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (_prefs.getBool("yaInicio") == true) {
      print("**********************");
      print(_prefs.getBool("yaInicio"));
      showWelcome = false;
      print(showWelcome);

      setState(() {});
    } else {
      print("------------------------");
      print(_prefs.getBool("yaInicio"));
      showWelcome = true;
      print(showWelcome);
      setState(() {});
    }
  }

  @override
  void initState() {
    _getYaInicio();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return showWelcome == true ? WelcomePage() : HomePage();
  }
}
