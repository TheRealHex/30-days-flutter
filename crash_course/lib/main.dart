import 'package:crash_course/mocks/mock_location.dart';
import 'package:flutter/material.dart';

import 'models/location.dart';
import 'screens/location_detail.dart';

void main() {
  final Location mockLocation = MockLocation.fetchAny();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LocationDetail(mockLocation),
  ));
}
