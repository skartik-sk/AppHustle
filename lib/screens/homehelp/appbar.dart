import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Builder(
      builder: (BuildContext context) {
        return Row(

          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff137C86),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
              Column(

                children: [
                  Text(
                    "Good Evening",
                    style: GoogleFonts.poppins(
                      color: Color(0xff137C86),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      
                    ),
                  )
                ],
              ),
            ],
          );
      },
    ),
  );
}
