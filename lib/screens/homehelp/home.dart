import 'package:apphustle/screens/homehelp/appbar.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:apphustle/screens/homehelp/homebody.dart';
import 'package:flutter/material.dart';

import '../../brain/appbar.dart';

class home extends StatelessWidget {
  Future<bool> _onWillPop() async {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Color(0xffE5F2F3),
        extendBody: true,
        appBar: appbar(
          title: "Welcome",
          contexts: context,
          icons: Icon(
            Icons.search,
            size: 30,
            color: Colors.black38,
          ),
        ),
        body: homebody(),
        drawer: appdrawer(),
        bottomNavigationBar: bottomnav("home"),
      ),
    );
  }
}
