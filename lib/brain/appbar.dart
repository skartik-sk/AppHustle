import 'package:apphustle/screens/Historyhelp/history.dart';
import 'package:apphustle/screens/Historyhelp/historyprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/Historyhelp/historyprovider.dart';
import '../screens/favhelp/favprovider.dart';
import '../screens/playlisthelp/newplay.dart';
import '../screens/search help/search.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  appbar({
    super.key,
    required this.icons,
    this.provider,
    required this.title,
    required this.contexts,
    this.homepro,
  });

  final Favprovider? provider;
   homeprofider? homepro;
  Icon icons;
  final String title;
  BuildContext contexts;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          centerTitle: true,
          bottomOpacity: 0.5,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Color(0xff137C86),
              )),
          title: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff137C86)),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  if (title == "Playlist") {
                    showModalBottomSheet(
                        context: contexts,
                        builder: (contexts) => newPlay(Addtask: (newName) {
                              Navigator.pop(contexts);
                            }));
                  } else if (title == "Welcome") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => search()));
                  } else if (title == "Search") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => history()));
                  } else if (title == "History") {
                    homepro!.clearhistroy();
                  } else {
                    provider!.clearFavorite();
                  }
                },
                icon: icons)
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
