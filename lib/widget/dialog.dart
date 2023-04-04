import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markdown_widget/markdown_widget.dart';

class CustomDialog extends StatelessWidget {
  dynamic path;
  CustomDialog(path, {super.key}) {
    this.path = path;
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 950) {
      Navigator.of(context).pop();
    }
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Scaffold(
        body: FutureBuilder(
            future: rootBundle.loadString(path),
            builder: (BuildContext context, dynamic snapshot) {
              if (snapshot.hasData) {
                final isDark = true;
                return Container(
                    padding: EdgeInsets.all(25),
                    child: MarkdownWidget(
                        data: snapshot.data,
                        config: isDark
                            ? MarkdownConfig.darkConfig
                            : MarkdownConfig.defaultConfig));
              }

              return Center(
                child: CircularProgressIndicator(),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          backgroundColor: Colors.grey.shade900,
          child: const Icon(
            Icons.close_rounded,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
