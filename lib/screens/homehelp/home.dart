
import 'package:apphustle/screens/homehelp/appbar.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:apphustle/screens/homehelp/homebody.dart';
import 'package:flutter/material.dart';
class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F2F3),

      extendBody: true,
        appBar: buildAppBar(),

      body: homebody(),
      drawer: appdrawer(),

      bottomNavigationBar: bottomnav("home"),
    );
  }
}


