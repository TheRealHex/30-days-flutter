import 'package:flutter/material.dart';
import 'package:todo_app/responsive/desktop_view.dart';
import 'package:todo_app/responsive/mobile_view.dart';
import 'package:todo_app/responsive/tablet_view.dart';

class ResponsiveUI extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  const ResponsiveUI(
      {required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 900) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
