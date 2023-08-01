
import 'package:apphustle/screens/Historyhelp/historybody.dart';
import 'package:apphustle/screens/Historyhelp/historyprovider.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../brain/appbar.dart';
class history extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        final hisprovier= Provider.of<homeprofider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE5F2F3),
      appBar:  appbar(
homepro: hisprovier,
        title:"History",contexts: context, icons: Icon(Icons.delete, size: 30,color: Colors.black
      ,),),
      body: histroybody(),
      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("home"),
    );
  }
  }
