import 'package:apphustle/screens/Historyhelp/historyprovider.dart';
import 'package:apphustle/screens/favhelp/favprovider.dart';
import 'package:apphustle/screens/model/playlist_model.dart';
import 'package:apphustle/screens/songscr/home_screen.dart';
import 'package:apphustle/screens/songscr/playlist_screen.dart';
import 'package:apphustle/screens/songscr/song_screen.dart';
import 'package:apphustle/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Playlist(),
        ),
        ChangeNotifierProvider(create: (context) => Favprovider()),
        ChangeNotifierProvider(create: (context) => homeprofider())
      ],
      child: GetMaterialApp(
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/playlist':
              return MaterialPageRoute(builder: (context) => PlaylistScreen());
              break;
          }
        },
        debugShowCheckedModeBanner: false,
        title: "kartik task ",
        home: splash(),
      ),
    );
  }
}
