import 'package:flutter/material.dart';

class appdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color(0x6baedee2),
            child: Center(
                child: Column(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ))),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            "My Reviews",
          ),
          leading: Icon(
            Icons.message_outlined,
            color: Color(0xff137C86),
          ),
        ),
        Divider(),
        ListTile(
          title: Text("History"),
          leading: Icon(
            Icons.history_toggle_off_rounded,
            color: Color(0xff137C86),
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text("Notification"),
          leading: Icon(
            Icons.notification_important,
            color: Color(0xff137C86),
          ),
          onTap: () => {},
        ),
        Divider(),
        ListTile(
          title: Text("Help"),
          leading: Icon(
            Icons.help_outline_outlined,
            color: Color(0xff137C86),
          ),
          onTap: () => {},
        ),
        Divider(),
        ListTile(
          title: Text("about us"),
          leading: Icon(
            Icons.info_outline,
            color: Color(0xff137C86),
          ),
          onTap: () => {},
        ),
        Divider(),
        ListTile(
          title: Text("Logout"),
          leading: Icon(
            Icons.exit_to_app_sharp,
            color: Color(0xff137C86),
          ),
          onTap: () => {},
        ),
      ],
    ));
  }
}
