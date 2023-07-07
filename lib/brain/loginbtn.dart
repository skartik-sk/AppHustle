import 'package:apphustle/screens/home.dart';
import 'package:apphustle/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginbutton extends StatelessWidget {
  String text;
  loginbutton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xff137C86),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => home()));
          },
          child: Row(
            children: [
              Text(
                text,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                size: 20.0,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
