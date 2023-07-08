
import 'package:apphustle/screens/favhelp/favbody.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:flutter/material.dart';
class fav extends StatelessWidget {
  const fav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: favbody(),
      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("fav"),
    );
  }
}
