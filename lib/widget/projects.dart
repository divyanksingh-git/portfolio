import 'package:flutter/material.dart';
import 'package:portfolio/widget/dialog.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 320,
              child: Material(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Anaam App",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Text(
                            "This app provides a platform for the general public to share information on Drug Trafficking with NCB anonymously.",
                            overflow: TextOverflow.clip,
                            //textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => CustomDialog("assets/Anaam.md")),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 320,
              child: Material(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Project Manager",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Text(
                            "A simple web app to manage your projects in a trello like format.",
                            overflow: TextOverflow.clip,
                            //textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) =>
                          CustomDialog("assets/ProjectManager.md")),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 320,
              child: Material(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Authentication Reimagined",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Text(
                            "It was developed to enable user to authenticate using AADHAR without providing their aadhar number",
                            overflow: TextOverflow.clip,
                            //textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) =>
                          CustomDialog("assets/Authentication.md")),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 320,
              child: Material(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Money Manager",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Text(
                            "This app allows you to easily manage your personal expense.",
                            overflow: TextOverflow.clip,
                            //textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) =>
                          CustomDialog("assets/MoneyManager.md")),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 320,
              child: Material(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Zarity Intern Assignment",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child:
                            Text("Internship assignment made for zarity health",
                                overflow: TextOverflow.clip,
                                //textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => CustomDialog("assets/zarity.md")),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 320,
              child: Material(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Bounce Game",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Text(
                            "The Nokia Bounce game made in Godot is a recreation of the classic mobile game originally released by Nokia in 2002.",
                            overflow: TextOverflow.clip,
                            //textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => CustomDialog("assets/Bounce.md")),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 190,
              width: 320,
              child: Material(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Quiz App",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Text(
                            "A simple quiz application with firebase login and a good UI",
                            overflow: TextOverflow.clip,
                            //textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 19)),
                      )
                    ],
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => CustomDialog("assets/Quiz.md")),
                ),
              ),
            ),
          ],
        ));
  }
}
