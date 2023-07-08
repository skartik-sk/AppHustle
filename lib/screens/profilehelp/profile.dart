
import 'package:apphustle/screens/homehelp/appbar.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';

import 'package:apphustle/screens/profilehelp/profilebody.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profilebody(),
      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("profile"),
    );
  }
}
