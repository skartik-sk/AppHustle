import 'package:apphustle/brain/loginbtn.dart';
import 'package:apphustle/brain/textfield.dart';
import 'package:apphustle/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class signup extends StatelessWidget {
  const signup({super.key});

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
                        "Create Account",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color(0xff137C86),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      textfield(
                        icon: Icons.account_box_outlined,
                        text: "Full Name",
                        value: false,
                      ),
                      SizedBox(
                        height: 8,
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
                        height: 8,
                      ),
                      textfield(
                        icon: Icons.password_outlined,
                        text: "Confirm Password",
                        value: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      loginbutton(
                        text: "Sign Up",
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a account?",
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
                            MaterialPageRoute(builder: (context) =>  loginscreen())); },
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xff137C86),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ))
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
