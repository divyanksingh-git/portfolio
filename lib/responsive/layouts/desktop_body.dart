import 'package:flutter/material.dart';
import 'package:portfolio/widget/ProjectText.dart';
import 'package:portfolio/widget/contact.dart';
import 'package:portfolio/widget/image_box.dart';
import 'package:portfolio/widget/intro.dart';
import 'package:portfolio/widget/projects.dart';
import 'package:portfolio/widget/skill_indicator.dart';
import 'package:portfolio/widget/skills.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        child: Row(children: [
          Expanded(
            child: Column(children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade800,
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Intro()),
                  flex: 2),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade800,
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: SkillSIndicator()),
                  flex: 2),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade800,
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Skills()),
                  flex: 6),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade800,
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: Contact()),
                  flex: 2),
            ]),
            flex: 1,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(children: [
              Expanded(child: ImageBox(), flex: 3),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade800,
                      ),
                      //padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: ProjectText()),
                  flex: 1),
              Expanded(
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade800,
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      child: Projects()),
                  flex: 6)
            ]),
            flex: 3,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "This Project is WIP",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
              );
            }),
        backgroundColor: Colors.red.shade900,
        child: Text(
          "WIP",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
