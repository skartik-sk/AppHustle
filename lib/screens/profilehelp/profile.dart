
import 'package:apphustle/screens/homehelp/appbar.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';

import 'package:apphustle/screens/profilehelp/profilebody.dart';
import 'package:flutter/material.dart';

import '../../brain/appbar.dart';

class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F2F3),
      extendBody: true,
       appBar:  appbar(
        title:"My Profile",contexts: context, icons: Icon(Icons.edit_note, size: 30,color: Color.fromARGB(97, 0, 0, 0)
      ,),),
      body: profilebody(),
      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("profile"),
    );
  }
}
