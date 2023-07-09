import 'package:apphustle/screens/Historyhelp/historybody.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:apphustle/screens/profilehelp/profilebody.dart';
import 'package:flutter/material.dart';
class history extends StatelessWidget {
  const history({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F2F3),

      body: histroybody(),
      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("home"),
    );
  }
  }
