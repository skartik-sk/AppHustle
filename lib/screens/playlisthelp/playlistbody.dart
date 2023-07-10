import 'package:apphustle/screens/Widgets/playlist_card.dart';
import 'package:apphustle/screens/model/playlist_model.dart';
import 'package:apphustle/screens/playlisthelp/newplay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistMusic1 extends StatefulWidget {
  const PlaylistMusic1({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  State<PlaylistMusic1> createState() => _PlaylistMusic1State();
}

class _PlaylistMusic1State extends State<PlaylistMusic1> {
  TextEditingController tasktext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Color(0xff137C86),
                          )),
                      Text(
                        "Playlist",
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff137C86)),
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) =>
                                    newPlay(Addtask: (newName) {
                                      // setState(() {
                                      //   tasks.add(task(name: newName));
                                      // });
                                      Navigator.pop(context);
                                    }));
                          },
                          icon: Icon(
                            Icons.edit_note,
                            size: 30,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(top: 20),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.playlists.length,
                          itemBuilder: ((context, index) {
                            return PlaylistCard(
                                playlist: widget.playlists[index]);
                          }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                ]))

        ));
  }
}
