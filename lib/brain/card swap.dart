import 'dart:ffi';

import 'package:apphustle/screens/favhelp/favprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class swapcard extends StatefulWidget {
  const swapcard({
    Key? key,
    required this.name,
    required this.image,
    required this.subdetail,
required this.n,

  }) : super(key: key);
  final String name, image, subdetail;
  final int n;

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
        onTap: null,
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
                            TextSpan(text: "${widget.subdetail} ")
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
