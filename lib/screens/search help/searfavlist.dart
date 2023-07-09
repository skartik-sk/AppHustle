import 'package:apphustle/screens/search%20help/searchmodel.dart';
import 'package:flutter/material.dart';

class searchfavlist extends StatefulWidget {
  const searchfavlist({super.key});

  @override
  State<searchfavlist> createState() => _searchfavlistState();
}

class _searchfavlistState extends State<searchfavlist> {
  static List<searchmodel> searchlist = [
    searchmodel(
      "    Midnights",
      2022,
      '    Taylor Swift',
    ),
    searchmodel(
      '    folklore ',
      2020,
      '    Taylor Swift',
    ),
    searchmodel(
      "     Un Verano Sin Ti",
      2022,
      '    Bad Bunny',
    ),
    searchmodel(
      "    Rumours",
      1977,
      '    Fleetwood Mac',
    ),
    searchmodel(
      "    evermore",
      2020,
      '    Taylor Swift',
    ),
  ];
  List<searchmodel> displyList  = List.from(searchlist);
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
