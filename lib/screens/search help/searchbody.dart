//

import 'package:apphustle/screens/Historyhelp/historyprovider.dart';
import 'package:apphustle/screens/favhelp/favprovider.dart';
import 'package:apphustle/screens/search%20help/searchcontroler.dart';
import 'package:apphustle/screens/search%20help/searchmodel.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';
class searchbody extends StatefulWidget {
  const searchbody({super.key});

  @override
  State<searchbody> createState() => _searchbodyState();
}

 List<searchmodel> searchlist = [
  searchmodel(
    "    Midnights",
    2022,
    '    Taylor Swift',
  ),
  searchmodel(
    '    folklore ',
    2020,
    '    Taylor Swift',
  ),
  searchmodel(
    "     Un Verano Sin Ti",
    2022,
    '    Bad Bunny',
  ),
  searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),searchmodel(
    "    Rumours",
    1977,
    '    Fleetwood Mac',
  ),
  searchmodel(
    "evermore",
    2020,
    '    Taylor Swift',
  ),
];
List<searchmodel> displyList = List.from(searchlist);
class _searchbodyState extends State<searchbody> {

  void updatelist (String value){
    setState((){
      displyList= searchlist.where((element)=> element.title!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favprovider>(context);
    final hisprovier= Provider.of<homeprofider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE5F2F3),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => updatelist(value),
              decoration: const InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(

                child: ListView.builder(

                    itemCount: displyList.length,
                    itemBuilder: (context, index) => ListTile(
                      onTap: (){
                        print("done");
                        hisprovier.toggleFavorite(searchlist[index]);
                      },
                      title: Text(displyList[index].title.toString() + " "+ displyList[index].year.toString()),
                      subtitle: Text(displyList[index].suddetail.toString()),
                      trailing:  IconButton(
                          onPressed: () {
                            print("pressed ${index} ");
                            provider.toggleFavorite(searchlist[index]);
                          },
                          icon:
                          provider.isExist(searchlist[index])? Icon(Icons.favorite, color: Colors.red):Icon(Icons.favorite, color: Colors.black12
                          )
                      ),

                    ))),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}


// Expanded(
// child: Obx(
// () => ListView.builder(
// itemCount: controller.foundPlayers.value.length,
// itemBuilder: (context, index) => ListTile(
// title: Text(
// controller.foundPlayers.value[index]['name'],
// style:
// TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// ),
// subtitle:
// Text(controller.foundPlayers.value[index]['country']),
// ),
// ),
// ),
// ),
// import 'package:apphustle/screens/search%20help/searchcontroler.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:get/get_state_manager/src/simple/get_view.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class searchbody extends GetView<searchController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                       TextFormField(
//                         onChanged: (value) => controller.filterPlayer(value),
//                           // onFieldSubmitted: (value){
//                           //   Navigator.pushReplacement(context,
//                           //       MaterialPageRoute(builder: (context) => profile()));
//                           // },
//
//                           autocorrect: true,
//                           keyboardType: TextInputType.text,
//                           obscureText: false,
//                           decoration: InputDecoration(
//                               hintText: "Search",
//                               prefixIcon: Icon(
//                                 Icons.search,
//                                 color: Color(0xff4EBBBE),
//                               ),
//                               border: InputBorder.none,
//                               // border: OutlineInputBorder(
//                               //   borderRadius: BorderRadius.circular(10.0),
//                               // ),
//                               contentPadding: EdgeInsets.all(0),
//                               hintStyle: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 height: 2.25,
//                                 color: Color(0xff137C86),
//                               )),
//                         ),
//                   Expanded(
//                     child: Obx(
//                           () => ListView.builder(
//                         itemCount: controller.foundPlayers.value.length,
//                         itemBuilder: (context, index) => ListTile(
//                           title: Text(
//                             controller.foundPlayers.value[index]['name'],
//                             style:
//                             TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           subtitle:
//                           Text(controller.foundPlayers.value[index]['country']),
//                         ),
//                       ),
//                     ),
//                   ),
//                     ],
//                   ),
//
//               ),
//             ),
//           ),
//         );
//   }}
//       SafeArea(
//         child: SingleChildScrollView(
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         Scaffold.of(context).openDrawer();
//                       },
//                       icon: Icon(
//                         Icons.menu,
//                         size: 30,
//                         color: Color(0xff137C86),
//                       )),
//
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
