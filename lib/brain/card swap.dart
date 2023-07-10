import 'dart:ffi';

import 'package:apphustle/screens/favhelp/favprovider.dart';
import 'package:apphustle/screens/songscr/song_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class swapcard extends StatefulWidget {
  const swapcard({
    Key? key,
    required this.name,
    required this.image,
    required this.subdetail,
    required this.url


  }) : super(key: key);
  final String name, image, subdetail, url;


  @override
  State<swapcard> createState() => _swapcardState();
}

class _swapcardState extends State<swapcard> {
  // final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favprovider>(context);
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: (){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SongScreen(songsource:widget. url,title: widget.name)));
        },
        child: SizedBox(
          width: 150,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x66AEDEE2).withOpacity(0),
                        Color(0x66AEDEE2).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Expanded(child: Container()),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10,
                      ),
                      child: Text.rich(
                        TextSpan(
                          style:
                              TextStyle(color: Color.fromARGB(255, 41, 5, 5)),
                          children: [
                            TextSpan(
                              text: "${widget.name}\n",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: "${widget.subdetail} ",style: TextStyle(
                              fontSize: 10,
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                    onPressed:(){


                    }
                      // print("pressed ${widget.n} ");
                      // provider.toggleFavorite(widget.n);
// setState(() {
//
// });
                   ,
                  icon:
                  Icon(Icons.playlist_add, color: Colors.white)
                 // provider.isExist(widget.n)? Icon(Icons.favorite, color: Colors.red):Icon(Icons.favorite, color: Colors.white)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
