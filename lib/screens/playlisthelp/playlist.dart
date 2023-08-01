import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/model/playlist_model.dart';
import 'package:apphustle/screens/playlisthelp/playlistbody.dart';
import 'package:flutter/material.dart';

import '../../brain/appbar.dart';
import '../homehelp/drawer.dart';

class playlist extends StatelessWidget {
  const playlist({super.key});

  @override
  Widget build(BuildContext context) {
    List<Playlist> playlists = Playlist.playlists;
    return Scaffold(
      backgroundColor: Color(0xffE5F2F3),
      extendBody: true,
      appBar: appbar(
        title: "Playlist",
        contexts: context,
        icons: Icon(
          Icons.edit_note,
          size: 30,
          color: Colors.black,
        ),
      ),
      body: PlaylistMusic1(
        playlists: playlists,
      ),      drawer: appdrawer(),
      bottomNavigationBar: bottomnav("play"),
    );
  }
}
