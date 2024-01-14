import 'package:flutter/material.dart';
import 'package:todo_app/responsive/desktop_view.dart';
import 'package:todo_app/responsive/mobile_view.dart';
import 'package:todo_app/responsive/tablet_view.dart';

class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileView();
        } else if (constraints.maxWidth < 900) {
          return const TabletView();
        } else {
          return const DesktopView();
        }
      },
    );
  }
}
