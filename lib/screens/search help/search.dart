import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:apphustle/screens/profilehelp/profilebody.dart';
import 'package:apphustle/screens/search%20help/searchbody.dart';
import 'package:flutter/material.dart';
class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F2F3),
      extendBody: true,
      body: searchbody(),

      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("search"),
    );
  }
}
