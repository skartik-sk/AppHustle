
//


import 'package:apphustle/screens/search%20help/searchcontroler.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';



class searchbody extends GetView<searchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => controller.filterPlayer(value),
              decoration: const InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Obx(
                    () => ListView.builder(
                  itemCount:
                  controller.foundPlayers.value.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      controller.foundPlayers.value[index]['name'],
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle:
                    Text(controller.foundPlayers.value[index]['country']),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
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
