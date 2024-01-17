import 'package:flutter/material.dart';
import 'package:todo_app/responsive/desktop_view.dart';
import 'package:todo_app/responsive/mobile_view.dart';
import 'package:todo_app/responsive/responsive.dart';
import 'package:todo_app/responsive/tablet_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUI(
      mobileScaffold: MobileView(),
      tabletScaffold: TabletView(),
      desktopScaffold: DesktopView(),
    );
  }
}
