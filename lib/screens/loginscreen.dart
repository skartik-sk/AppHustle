import 'package:apphustle/brain/loginbtn.dart';
import 'package:apphustle/brain/textfield.dart';
import 'package:apphustle/screens/signup.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 150.0,
                  height: 150,
                  child: Image.asset("assets/images/logo.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color(0xff137C86),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      Text(
                        "Please login in to continue",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      textfield(
                        icon: Icons.mail_outline,
                        text: "Eamil",
                        value: false,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      textfield(
                        icon: Icons.password_outlined,
                        text: "Password",
                        value: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      loginbutton(
                        text: "Login",
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                    TextButton(
                        onPressed: () {  Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  signup())); },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xff137C86),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
