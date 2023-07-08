import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'song_model.dart';

class Playlist extends ChangeNotifier {
  final String? title;
  final List<Song>? songs;
  final String? imageUrl;
  bool? isDone;
  Playlist({
     this.title,
     this.songs,
     this.imageUrl = "https://images.unsplash.com/photo-1576525865260-9f0e7cfb02b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80",
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'Hip-hop R&B Mix',
      songs: Song.songs,
      imageUrl:
      'https://images.unsplash.com/photo-1576525865260-9f0e7cfb02b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80',
    ),
    Playlist(
      title: 'Rock & Roll',
      songs: Song.songs,
      imageUrl:
      'https://images.unsplash.com/photo-1629276301820-0f3eedc29fd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2848&q=80',
    ),
    Playlist(
      title: 'Techno',
      songs: Song.songs,
      imageUrl:
      'https://images.unsplash.com/photo-1594623930572-300a3011d9ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
    )
  ];


int get taskCount {
  return playlists.length;
}

void addtask(String newtasktitle) {
  final uptask = Playlist( title: newtasktitle, songs: Song.songs);
  playlists.add(uptask);
  notifyListeners();
}

UnmodifiableListView<Playlist> get tasks {
  return UnmodifiableListView(playlists);
}

void updateTask(Playlist taskt) {
  taskt.toggleDone();
  notifyListeners();
}

void deltask(Playlist taskt) {
  playlists.remove(taskt);
  notifyListeners();
}
  void toggleDone() {
    isDone = !isDone!;
  }
}