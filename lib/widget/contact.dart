import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttericon/elusive_icons.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 1),
        Text("Contact Me",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        Spacer(
          flex: 2,
        ),
        Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse("https://github.com/divyanksingh-git"));
                    },
                    icon: Icon(Elusive.github)),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          "https://www.linkedin.com/in/divyanksingh52/"));
                    },
                    icon: Icon(Elusive.linkedin)),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse("mailto:divyanksingh20@gmail.com"));
                    },
                    icon: Icon(Elusive.mail)),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse("tel:+919559872149"));
                    },
                    icon: Icon(Elusive.phone)),
              ],
            )),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
