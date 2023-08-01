import 'package:apphustle/screens/Historyhelp/historyprovider.dart';
import 'package:apphustle/screens/favhelp/favprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class histroybody extends StatelessWidget {
  const histroybody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favprovider>(context);
    final hisprovier= Provider.of<homeprofider>(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [    Expanded(
                child: ListView.builder(
                    itemCount: hisprovier.history.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(hisprovier.history[index].title.toString() +
                          " " +
                          hisprovier.history[index].year.toString()),
                      subtitle: Text(
                          hisprovier.history[index].suddetail.toString()),
                    ))),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

