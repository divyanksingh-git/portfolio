import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  String title = "Skills";
  dynamic skills = [
    [
      ["Python", 85],
      ["Dart", 70],
      ["Flutter", 80],
      ["Firebase", 75],
      ["HTML", 70],
      ["CSS", 60],
      ["JS", 50],
      ["SQL", 55],
      ["SDCL", 70],
      ["DSA", 65],
      ["SEO", 60],
      ["Git", 80],
      ["Linux", 95]
    ],
    [
      ["Problem Solving", 75],
      ["Critical Thinking", 70],
      ["Project Management", 65],
      ["Time Management", 70],
      ["Teamwork", 65],
      ["Attention to details", 80],
      ["Creativity", 85]
    ],
    [
      ["Gimp", 70],
      ["Photoshop", 60],
      ["LibreOfiice", 70],
      ["MS Office", 60],
      ["Godot", 80],
      ["Aseprite", 80],
      ["Figma", 75],
      ["Penetration Testing", 60],
      ["Socket Programming", 60],
      ["Tkinter", 65],
      ["Burp Suit", 60],
      ["Kali Linux", 80]
    ]
  ];
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    title = "Hard Skills";
    index = 0;
    super.initState();
  }

  Color retColor(i) {
    if (i < 70) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.arrow_left, size: 30),
                  onPressed: () {
                    setState(() {
                      if (index == 0) {
                        index = 2;
                      } else {
                        index--;
                      }

                      if (index == 0) {
                        title = "Hard Skills";
                      } else if (index == 1) {
                        title = "Soft Skills";
                      } else if (index == 2) {
                        title = "Others";
                      }
                    });
                  },
                ),
                flex: 1,
              ),
              Expanded(
                  child: Center(
                      child: Text(
                    "$title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )),
                  flex: 5),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_right,
                    size: 30,
                  ),
                  onPressed: () {
                    setState(() {
                      if (index == 2) {
                        index = 0;
                      } else {
                        index++;
                      }

                      if (index == 0) {
                        title = "Hard Skills";
                      } else if (index == 1) {
                        title = "Soft Skills";
                      } else if (index == 2) {
                        title = "Others";
                      }
                    });
                  },
                ),
                flex: 1,
              )
            ],
          ),
          flex: 2,
        ),
        //Spacer(flex: 1),
        Expanded(
            child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Skills",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              "Proficiency",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        )),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: ListView(
            children: [
              for (var i in skills[index])
                Container(
                  margin: EdgeInsets.all(1),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(i[0],
                          style:
                              TextStyle(fontSize: 16, color: retColor(i[1]))),
                      Expanded(
                          child: Text(
                        '-' * 100,
                        maxLines: 1,
                        style: TextStyle(color: Colors.grey.shade700),
                      )),
                      Text(i[1].toString(),
                          style:
                              TextStyle(fontSize: 16, color: retColor(i[1]))),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                )
            ],
          ),
          flex: 9,
        )
      ],
    );
  }
}
