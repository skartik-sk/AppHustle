import 'package:apphustle/brain/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSize buildAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          centerTitle: true,
          bottomOpacity: 0.5,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only( left: 8.0 , top: 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(29, 0, 0, 0),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Color(0xff137C86),
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip: MaterialLocalizations.of(context)
                        .openAppDrawerTooltip,
                  ),
                ),
              );
            },
          ),
          title: Container(
            margin: EdgeInsets.only( top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              // color: Color(0x3F000000),
            ),
            child:           Text("Welcome", style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold, color: Color(0xff137C86)),),
            // textfield(icon:    Icons.search, text: "Search", value: false)
            // TextFormField(
            //   onTap: (){
            //
            //   },
            //   // onFieldSubmitted: (value){
            //   //   Navigator.pushReplacement(context,
            //   //       MaterialPageRoute(builder: (context) => profile()));
            //   // },
            //
            //   autocorrect: true,
            //   keyboardType: TextInputType.text,
            //   obscureText: false,
            //   decoration: InputDecoration(
            //       hintText: "Search",
            //       prefixIcon: Icon(
            //         Icons.search,
            //         color: Color(0xff4EBBBE),
            //       ),
            //       border: InputBorder.none,
            //       // border: OutlineInputBorder(
            //       //   borderRadius: BorderRadius.circular(10.0),
            //       // ),
            //       contentPadding: EdgeInsets.all(0),
            //       hintStyle: TextStyle(
            //         fontWeight: FontWeight.w500,
            //         height: 2.25,
            //         color: Color(0xff137C86),
            //       )),
            // ),
          ),
        ),
      ],
    ),
  );
}
