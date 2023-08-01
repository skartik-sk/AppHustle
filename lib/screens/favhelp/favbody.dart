import 'package:apphustle/brain/card%20swap.dart';
import 'package:apphustle/screens/favhelp/favprovider.dart';
import 'package:apphustle/screens/search%20help/searchbody.dart';
import 'package:apphustle/screens/search%20help/searchmodel.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class favbody extends StatefulWidget {
  const favbody({super.key});

  @override
  State<favbody> createState() => _favbodyState();
}

class _favbodyState extends State<favbody> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favprovider>(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           
            Expanded(
                child: ListView.builder(
                    itemCount: provider.words.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(provider.words[index].title.toString() +
                              " " +
                              provider.words[index].year.toString()),
                          subtitle:
                              Text(provider.words[index].suddetail.toString()),
                          trailing: IconButton(
                              onPressed: () {
                                print("pressed ${index} ");
                                provider.remorew(provider.words[index]);
                              },
                              icon: Icon(Icons.favorite, color: Colors.red)),
                        ))),
            SizedBox(height: 100),
            // Expanded(
            //     child: ListView.builder(
            //         itemCount: provider.words.length,
            //         itemBuilder: (context, index) => ListTile(
            //           title: Text(provider.words[index].title.toString() + " " + provider.words[index].year.toString()),
            //           subtitle: Text(provider.words[index].suddetail.toString()),
            //           trailing:  IconButton(
            //               onPressed: () {
            //                 print("pressed ${index} ");
            //                 provider.toggleFavorite(searchlist[index]);
            //               },
            //               icon:
            //               provider.isExist(searchlist[index])? Icon(Icons.favorite, color: Colors.red):Icon(Icons.favorite, color: Colors.white)
            //           ),
            //
            //         )))
          ],
        ),
      ),
    );
  }
}


// Column(
// children: [
// Expanded(
// child: SizedBox(
// height: 200.0,
// child: ListView.builder(
// shrinkWrap: true,
// itemCount: provider.words.length,
// itemBuilder: (context, index) {
// return ListTile(
// onTap: (){
// print("pressed ${index} ");
// provider.toggleFavorite(index);
// },
// title: Text("item " + index.toString()),
// trailing: Icon(
// (provider.isExist(index)
// ? Icon(Icons.favorite, color: Colors.red)
//     : Icon(Icons.favorite, color: Colors.white)) as IconData?),
// );
// }),
// ),
// )
// ],
// )
