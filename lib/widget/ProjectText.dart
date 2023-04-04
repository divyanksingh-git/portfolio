import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectText extends StatelessWidget {
  const ProjectText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Text("Projects Showcase",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left)),
          flex: 8,
        ),
        Expanded(
          child: OutlinedButton(
              onPressed: () async {
                await launchUrl(
                    Uri.parse("https://divyanksingh-git.github.io/resume/"));
              },
              child: Text(
                "Live Resume",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          flex: 2,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: OutlinedButton(
              onPressed: () async {
                await launchUrl(
                    Uri.parse("https://github.com/divyanksingh-git/resume"));
              },
              child: Text(
                "Download Resume",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          flex: 2,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
