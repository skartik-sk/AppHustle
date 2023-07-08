import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class favbody extends StatelessWidget {
  const favbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
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
                    "My Favorate",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff137C86)),
                  ),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.insert_link,
                        size: 30,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
