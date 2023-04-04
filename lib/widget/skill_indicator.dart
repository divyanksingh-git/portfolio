import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SkillSIndicator extends StatelessWidget {
  const SkillSIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CircularPercentIndicator(
            radius: 45.0,
            lineWidth: 5.0,
            percent: 0.80,
            center: new Text("Flutter",
                style: TextStyle(fontWeight: FontWeight.bold)),
            progressColor: Colors.green,
          ),
          flex: 1,
        ),
        Expanded(
          child: CircularPercentIndicator(
            radius: 45.0,
            lineWidth: 5.0,
            percent: 0.85,
            center: new Text(
              "Python",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            progressColor: Colors.green,
          ),
          flex: 1,
        ),
        Expanded(
          child: CircularPercentIndicator(
            radius: 45.0,
            lineWidth: 5.0,
            percent: 0.75,
            center: new Text("Firebase",
                style: TextStyle(fontWeight: FontWeight.bold)),
            progressColor: Colors.green,
          ),
          flex: 1,
        ),
      ],
    );
  }
}
