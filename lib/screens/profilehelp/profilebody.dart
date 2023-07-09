import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilebody extends StatelessWidget {
  const profilebody({super.key});

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
                  IconButton(onPressed:(){
                    Scaffold
                 .of(context).openDrawer(); }, icon: Icon(Icons.menu, size:  30, color: Color(0xff137C86),)),
                  Text("My profile", style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold, color: Color(0xff137C86)),),
                  IconButton(onPressed: null, icon: Icon(Icons.edit_note, size: 30,))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius:
                40,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),

              ),
              SizedBox(
                height: 5,
              ),
              Text("Singupalli kartik" , style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w500),),
              Text("@Musician" , style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  profilecard(a: "67" , b:"Collection"),
                  profilecard(a: "37" , b:"Saves"),
                  profilecard(a: "21" , b:"Follower"),
                  profilecard(a: "12" , b:"Following"),


                ],
              ),
              Divider(thickness: 2,color: Colors.black54,),
              Column(
                children: [
                  Text("Share Account" , style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.green),),
                  Divider(thickness: 1,color: Colors.black38,),   Text("Connected Servies " , style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.purpleAccent),),
                  Divider(thickness: 1,color: Colors.black38,),      Text("Switch Account" , style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.blueAccent),),
                  Divider(thickness: 1,color: Colors.black38,),   Text("About" , style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey),),
                  Divider(thickness: 1,color: Colors.black38,),Text("Delete Account" , style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400 , color: Colors.redAccent),),
                  Divider(thickness: 1,color: Colors.black38,),



                ],
              ),
              // SizedBox(height: 100),
            ],
          ),
        ),
      ),
    ));
  }
}

class profilecard extends StatelessWidget {
   profilecard({
required this.a, required this.b
  });
String a, b;
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Text(a , style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),),
      Text(b , style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),),
    ],);
  }
}
