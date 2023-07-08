import 'package:apphustle/brain/card%20swap.dart';
import 'package:apphustle/screens/favhelp/favprovider.dart';

import 'package:apphustle/screens/homehelp/appbar.dart';
import 'package:apphustle/screens/homehelp/carouselcards.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homebody extends StatelessWidget {
  const homebody({super.key});

  @override
  Widget build(BuildContext context) {
    // final provider = Favprovider.of(context);
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Treanding right now",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),

              CarouselSlider(
                items: [
                  //1st Image of Slider
                  carouselcards(),
                  //2nd Image of Slider
                  carouselcards(),
                  //3rd Image of Slider
                  carouselcards(),
                  //4th Image of Slider
                  carouselcards(),
                  //5th Image of Slider
                  carouselcards(),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 250.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1500),
                  viewportFraction: 0.8,
                ),
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children:[
              //       swapcard(
              //         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ38JNA2OOCqlD4bdiZrYbHNNjzuVWyHL3lAnR3yM7Ys9GF-Z0qkK8mkbjqgJR6fOotzDM&usqp=CAU',
              //         name: 'digital world',
              //         subdetail: 'created by kartik',
              //       ),swapcard(
              //         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKvzbq3W_wAY6SOZ2qtGm4E46zUHG4HH0UXK_4H1_4IhBkt832olokP8bA26Fay0V6TfI&usqp=CAU',
              //         name: 'digital world',
              //         subdetail: 'created by kartik',
              //       ),swapcard(
              //         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOnj3JdCa9f9UWPe7lrEBdWRVCnZOlbQHRETn-vhLb57P84CZ61FYaEmuV5WS4awxrqDM&usqp=CAU',
              //         name: 'digital world',
              //         subdetail: 'created by kartik',
              //       ),swapcard(
              //         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqVE4ccVDvYWKyEmv2jAu3oyuixgEPl4PmHzTNa1pqoaodl7vdGsD6xbi9XxjhkIr9k4k&usqp=CAU',
              //         name: 'digital world',
              //         subdetail: 'created by kartik',
              //       ),swapcard(
              //         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK3cmjyRYBzCsu9i44EAPmz0CL95PQxjuktfmfFjF1X3Ygy68586TqWtkuEq-F3rL6OX4&usqp=CAU',
              //         name: 'digital world',
              //         subdetail: 'created by kartik',
              //       ),
              //
              //
              //     ],
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Hit songs",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    swapcard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBo51DfQiVpAJSR2xRPnkldLsrWdBjpFwnF1qEO_iRRPYGYdEAq059uTE3G3DOuSVb5JU&usqp=CAU',
                      name: 'digital world',
                      subdetail: 'created by kartik',
                    ),
                    swapcard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXjv7VvE69VAeM7fyKfZ6Tifj7nfW0JB2o54sPKlHjAim3jIMgjFOLT3b9pwuwSluSiD0&usqp=CAU',
                      name: 'digital world',
                      subdetail: 'created by kartik',
                    ),
                    swapcard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvB5fDJlba5OcymiFKzJcLA3P7Td0gBaMr_nhmfw32XI1RzAjpI_KfUsTp61aeSp0o-Xg&usqp=CAU',
                      name: 'digital world',
                      subdetail: 'created by kartik',
                    ),
                    swapcard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUt4c2S0r8ZCC6wCb1ThTvIdk32aMg8mCfKGhwBoKqF7Xk3p-rUZsDxlMdJzJHlkyUWt8&usqp=CAU',
                      name: 'digital world',
                      subdetail: 'created by kartik',
                    ),
                    swapcard(
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT85_Nz0N78HJodWLa3E55WaTGiUMk6_S9REbQyRnC9I1Lf23ZOLz2E_vTrRFTqg4qOelQ&usqp=CAU',
                      name: 'digital world',
                      subdetail: 'created by kartik',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
