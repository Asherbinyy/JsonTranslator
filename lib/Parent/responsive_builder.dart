import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
   final Widget? web;
  const ResponsiveBuilder({
    Key? key,
   required this.mobile,
    this.tablet,
    this.desktop,
     this.web,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  return LayoutBuilder(
    builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (kIsWeb) {
            return web ?? mobile;
          } else if (constraints.maxWidth >= 1200) {
            return desktop ?? mobile;
          } else if (constraints.maxWidth >= 800) {
            return tablet ?? mobile;
          } else {
            return mobile;
          }
        },
      );
     },
  );
  }
}
