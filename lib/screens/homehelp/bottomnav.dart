import 'package:flutter/material.dart';

class bottomnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(6),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xbadadad),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.home_rounded,
                size: 30,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.queue_music_rounded, size: 30), onPressed: null),
          IconButton(
              icon: Icon(Icons.favorite_border, size: 30), onPressed: null),
          IconButton(
              icon: Icon(Icons.account_circle_outlined, size: 30),
              onPressed: null),
        ],
      ),
    );
  }
}
