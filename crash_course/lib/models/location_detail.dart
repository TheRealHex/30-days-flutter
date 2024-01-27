import 'package:crash_course/models/location.dart';
import 'package:crash_course/styles.dart';
import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  final Location location;
  const LocationDetail(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // _bannerImage(location.url, 200),
          // ..._renderFacts(location),
          ..._renderBody(context, location),
        ],
      ),
    );
  }
}

List<Widget> _renderBody(BuildContext context, Location location) {
  List<Widget> result = [];
  result.add(_bannerImage(location.url, 300));
  result.addAll(_renderFacts(context, location));
  return result;
}

List<Widget> _renderFacts(BuildContext context, Location location) {
  List<Widget> result = [];
  for (int i = 0; i < location.facts.length; i++) {
    result.add(_sectionTitle(location.facts[i].title));
    result.add(_sectionText(location.facts[i].text));
  }
  return result;
}

Widget _sectionTitle(String text) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: mediumTitleStyle,
      ),
    );
Widget _sectionText(String text) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: mediumBodyStyle,
      ),
    );
Widget _bannerImage(String url, double height) {
  return Container(
    decoration: BoxDecoration(color: Colors.grey[100]),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    constraints: BoxConstraints.tightFor(height: height),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}
