import 'package:apphustle/brain/card%20swap.dart';
import 'package:apphustle/screens/favhelp/favprovider.dart';

import 'package:apphustle/screens/homehelp/appbar.dart';
import 'package:apphustle/screens/homehelp/carouselcards.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class homebody extends StatelessWidget {
  const homebody({super.key});

  @override
  Widget build(BuildContext context) {
    // final provider = Favprovider.of(context);
    final provider = Provider.of<Favprovider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              CarouselSlider(
                items: [
                  //1st Image of Slider
                  carouselcards(

                    img:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ38JNA2OOCqlD4bdiZrYbHNNjzuVWyHL3lAnR3yM7Ys9GF-Z0qkK8mkbjqgJR6fOotzDM&usqp=CAU',
                    url:
                        'https://socialdance.stanford.edu/music/The_Swedish_Dance.mp3', text: 'The_Swedish_Dance',
                  ),
                  //2nd Image of Slider
                  carouselcards(

                    img:'https://c.saavncdn.com/857/Are-You-Lonely-English-2019-20190213200954-500x500.jpg',
                    url: 'https://socialdance.stanford.edu/music/Partners_For_Life_Waltz_Q_Fig_1.m4a', text: 'Partners_For_Life_Waltz',
                  ),
                  carouselcards(

                    img:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7umo2oeJRuhET6Ih22YVSRLsxDhkoafqpSX9Jr51ATBZa0NHiuFM4DebaV_sXj7SXsvE&usqp=CAU',
                    url: 'https://socialdance.stanford.edu/music/Saros_5x.mp3', text: 'Saros',
                  ),
                  carouselcards(

                    img:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREmr3nL-fFeOdilAN77V_Cr7TmZq15pgnz87OvTz8rG0AGAvvZVN9gJUuTFrBS1uNRhGY&usqp=CAU',
                    url: 'https://socialdance.stanford.edu/music/Royal_Horse_Guard_Quadrille_5figs.mp3', text: 'Royal_Horse_Guard_Quadrille',
                  ),
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
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    swapcard(

                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBo51DfQiVpAJSR2xRPnkldLsrWdBjpFwnF1qEO_iRRPYGYdEAq059uTE3G3DOuSVb5JU&usqp=CAU',
                      name: 'Pinch_of_Snuff',
                      subdetail: ' by Pinch_of_Snuff', url: 'https://socialdance.stanford.edu/music/Pinch_of_Snuff_Ecossaise.mp3',
                    ),
                    swapcard(

                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXjv7VvE69VAeM7fyKfZ6Tifj7nfW0JB2o54sPKlHjAim3jIMgjFOLT3b9pwuwSluSiD0&usqp=CAU',
                      name: 'Zig_Zag_Saunter',
                      subdetail: ' by Zig_Zag_Saunter', url: 'https://socialdance.stanford.edu/music/Zig_Zag_Saunter.m4a',
                    ),
                    swapcard(

                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvB5fDJlba5OcymiFKzJcLA3P7Td0gBaMr_nhmfw32XI1RzAjpI_KfUsTp61aeSp0o-Xg&usqp=CAU',
                      name: 'Fireman\'s_Dance',
                      subdetail: ' by Fireman\'s_Dance', url: 'https://socialdance.stanford.edu/music/Fireman\'s_Dance.mp3',
                    ),
                    swapcard(

                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUt4c2S0r8ZCC6wCb1ThTvIdk32aMg8mCfKGhwBoKqF7Xk3p-rUZsDxlMdJzJHlkyUWt8&usqp=CAU',
                      name: 'Contradance_Money_Musk',
                      subdetail: ' by Contradance_Money_Musk', url: 'https://socialdance.stanford.edu/music/Contradance_Money_Musk.m4a',
                    ),
                    swapcard(

                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT85_Nz0N78HJodWLa3E55WaTGiUMk6_S9REbQyRnC9I1Lf23ZOLz2E_vTrRFTqg4qOelQ&usqp=CAU',
                      name: 'Philadelphia_Schottisch',
                      subdetail: ' by Philadelphia_Schottische', url: 'https://socialdance.stanford.edu/music/Philadelphia_Schottische_Quadrille.m4a',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
            ],
          )
        ],
      ),
    );
  }
}
