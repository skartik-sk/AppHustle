import 'package:apphustle/screens/homebody.dart';
import 'package:apphustle/screens/homehelp/appbar.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:flutter/material.dart';
class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
      drawer: appdrawer(),
      body: homebody(),
      bottomNavigationBar: bottomnav(),
    );
  }
}


