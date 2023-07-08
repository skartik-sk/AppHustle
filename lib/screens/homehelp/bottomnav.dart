
import 'package:apphustle/screens/favhelp/fav.dart';
import 'package:apphustle/screens/favhelp/favbody.dart';
import 'package:apphustle/screens/favhelp/favtost.dart';

import 'package:apphustle/screens/homehelp/home.dart';
import 'package:apphustle/screens/playlisthelp/playlist.dart';
import 'package:apphustle/screens/playlisthelp/playtost.dart';

import 'package:apphustle/screens/profilehelp/profile.dart';
import 'package:apphustle/screens/search%20help/search.dart';
import 'package:apphustle/screens/search%20help/searchlist.dart';
import 'package:apphustle/screens/search%20help/searchtose.dart';
import 'package:apphustle/screens/songscr/home_screen.dart';
import 'package:apphustle/screens/songscr/playlist_screen.dart';

import 'package:flutter/material.dart';

class bottomnav extends StatelessWidget {
  bottomnav(this.which);
  String which;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(6),
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0x20000000),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: which == "search" ? Color(0xff137C86) : Color(0x5f1f1e1e),
              ),
              onPressed: () {
                showtost3();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => search()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.queue_music_rounded,
                size: 30,
                color: which == "play" ? Color(0xff137C86) : Color(0x5f1f1e1e),
              ),
              onPressed: () {
                showtost1();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => playlist()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.home_rounded,
                size: 30,
                color: which == "home" ? Color(0xff137C86) : Color(0x5f1f1e1e),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => home()));
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color:
                      which == "fav" ? Color(0xff137C86) : Color(0x5f1f1e1e),
                ),
                onPressed:() {
                  showtost();
                  Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => fav()));},),
            IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: which == "profile" ? Color(0xff137C86) : Color(0x5f1f1e1e),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
