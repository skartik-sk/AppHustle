import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:apphustle/screens/model/playlist_model.dart';
import 'package:apphustle/screens/playlisthelp/playlistbody.dart';
import 'package:flutter/material.dart';
class playlist extends StatelessWidget {
  const playlist({super.key});

  @override
  Widget build(BuildContext context) {
    List<Playlist> playlists = Playlist.playlists;
    return Scaffold(
      body: PlaylistMusic1(playlists: playlists,),
      bottomNavigationBar: bottomnav("play"),
    );
  }
}
