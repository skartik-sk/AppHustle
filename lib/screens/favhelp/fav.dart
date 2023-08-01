
import 'package:apphustle/screens/favhelp/favbody.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/homehelp/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../brain/appbar.dart';
import 'favprovider.dart';
class fav extends StatelessWidget {
  const fav({super.key});

  @override
  Widget build(BuildContext context) {
        final provider = Provider.of<Favprovider>(context);
    return Scaffold(
      
      backgroundColor: Color(0xffE5F2F3),
      extendBody: true,
      appBar:  appbar(
        provider: provider,

        title:"My Favorate",contexts: context, icons: Icon(Icons.delete, size: 30,color: Colors.black
      ,),),
      body: favbody(),
      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("fav"),
    );
  }
}
