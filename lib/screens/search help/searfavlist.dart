import 'package:apphustle/screens/search%20help/searchmodel.dart';
import 'package:flutter/material.dart';

class searchfavlist extends StatefulWidget {
  const searchfavlist({super.key});

  @override
  State<searchfavlist> createState() => _searchfavlistState();
}

class _searchfavlistState extends State<searchfavlist> {
  static List<searchmodel> searchlist = [

  ];
  List<searchmodel> displyList  = List.from(searchlist);
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
