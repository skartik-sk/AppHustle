import 'package:apphustle/brain/MusicDataResponse.dart';
import 'package:apphustle/screens/homehelp/bottomnav.dart';
import 'package:flutter/material.dart';

class searchlist extends StatefulWidget {
  const searchlist({Key? key}) : super(key: key);

  @override
  State<searchlist> createState() => _searchlist();
}

class _searchlist extends State<searchlist> {
  List<MusicDataResponse> musicList = [];

  // @override
  // void initState() {
  //   super.initState();
  //   fetchMusicData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Music App"),
        ),
        body: customListCard(),
        bottomNavigationBar: bottomnav("play"),
    );

  }

  // Future<void> fetchMusicData() async {
  //   final musiclist = await ApiService().getAllFetchMusicData();
  //   setState(() {
  //     musicList = musiclist;
  //   });
  // }

  Widget customListCard() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return InkWell(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) =>
          //             MusicDetailPage(response: musicList[index]),
          //       ));
          // },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, bottom: 8, right: 8, top: 4),
                  child: SizedBox(
                    child: FadeInImage.assetNetwork(
                        height: 60,
                        width: 60,
                        placeholder: "lib/assets/images/logo.png",
                        image: musicList[index].image.toString(),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      musicList[index].title.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      musicList[index].artist.toString(),
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: musicList.length,
    );
  }
}
