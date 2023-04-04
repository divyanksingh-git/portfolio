import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ImageBox extends StatelessWidget {
  ImageBox({Key? key}) : super(key: key);

  final String URL =
      "https://images.pexels.com/photos/6634140/pexels-photo-6634140.jpeg?auto=compress&cs=tinysrgb&w=1600";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 20.0, height: 100.0),
          const Text(
            'I Am A',
            style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(width: 20.0, height: 100.0),
          DefaultTextStyle(
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange,
              fontSize: 40.0,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Coder',
                    textStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                RotateAnimatedText('Flutter Developer',
                    textStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                RotateAnimatedText('Python Developer',
                    textStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                RotateAnimatedText('Problem Solver',
                    textStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                RotateAnimatedText('Tech Enthusiast',
                    textStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
              ],
              isRepeatingAnimation: true,
              totalRepeatCount: 1000,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(URL),
            fit: BoxFit.cover,
          )),
    );
  }
}
