import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Column(children: [
        Image.network("https://github.com/divyanksingh-git.png")
      ])),
      SizedBox(width: 10),
      Expanded(
        child: Column(children: [
          Container(
              width: double.infinity,
              child: Text(
                "Divyank Singh",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            "I am a Python and Flutter developer with expertise in building scalable and efficient applications for web and mobile platforms.",
            overflow: TextOverflow.clip,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 15),
          )
        ]),
        flex: 2,
      )
    ]);
  }
}
