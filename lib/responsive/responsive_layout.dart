import 'package:flutter/material.dart';

import 'layouts/desktop_body.dart';
import 'layouts/mobile_body.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1300) {
        return MobileBody();
      } else {
        return DesktopBody();
      }
    });
  }
}
