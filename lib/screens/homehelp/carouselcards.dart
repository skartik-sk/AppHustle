import 'package:apphustle/screens/favhelp/favprovider.dart';
import 'package:apphustle/screens/songscr/song_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class carouselcards extends StatelessWidget {
carouselcards({ required this.img, required this.url,required this.text});
final String img;
final String url;
final String text;

  @override
  Widget build(BuildContext context) {
    // final provider = Favprovider.of(context);
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(
              // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ38JNA2OOCqlD4bdiZrYbHNNjzuVWyHL3lAnR3yM7Ys9GF-Z0qkK8mkbjqgJR6fOotzDM&usqp=CAU"
          img

          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white70,
              ),
              // color: Colors.white,

              child: Padding(
                padding:
                EdgeInsets.only(left: 20.0, right: 10, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Play Song ->',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => SongScreen(songsource: url,title: text)));
                          print("pressed");
                        },
                        icon: Icon(
                          Icons.play_circle_fill,
                          size: 30,
                          color: Color(0xff137C86),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}