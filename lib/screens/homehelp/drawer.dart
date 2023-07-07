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
                color: Color.fromARGB(255, 233, 211, 175),
                child: Center(
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/logo.png'),
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
              title: Text("Home"),
              leading: Icon(Icons.new_releases),
            ),
            Divider(),
            ListTile(
              title: Text("Reviews"),
              leading: Icon(Icons.message),
              onTap: () {
                // _launchURL();

                // if (await canLaunch(url)) {
                //   await launch(
                //     url,
                //     forceSafariVC: false,
                //   );
                // }
              },
              // launch('https://pub.dev/packages/url_launcher'),
            ),
            Divider(),
            ListTile(
              title: Text("Notification"),
              leading: Icon(Icons.add_alert_rounded),
              onTap: () => {},
            ),
            Divider(),
            ListTile(
              title: Text("My account"),
              leading: Icon(Icons.person),
              onTap: () => {},
            ),
            Divider(),
            ListTile(
              title: Text("My Cart"),
              leading: Icon(Icons.card_travel),
              onTap: () => {},
            ),
            Divider(),
            ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.phone),
              onTap: () => {},
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              leading: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ));
  }
}