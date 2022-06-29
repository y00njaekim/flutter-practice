import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ?(Question) LayoutBuilder 는 언제 쓰는 거지 ??
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          // * Web Screen
          return webScreenLayout;
        }
        return mobileScreenLayout;
        // * Mobile Screen
      },
    );
  }
}
