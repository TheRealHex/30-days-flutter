import 'package:crash_course/models/location_fact.dart';

import '../models/location.dart';

class MockLocation extends Location {
  MockLocation({required super.name, required super.url, required super.facts});

  static Location fetchAny() {
    return Location(
        name: 'Name of a location',
        url:
            'https://images.pexels.com/photos/4360449/pexels-photo-4360449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        facts: <LocationFact>[
          LocationFact(
            title: 'Summary',
            text:
                'Lorem ipsum dolor sit amet, officia excepteur ex fugiat reprehenderit enim labore culpa sint ad nisi Lorem pariatur mollit ex esse exercitation amet. Nisi anim cupidatat excepteur officia. Reprehenderit nostrud nostrud ipsum Lorem est aliquip amet voluptate voluptate dolor minim nulla est proident. Nostrud officia pariatur ut officia. Sit irure elit esse ea nulla sunt ex occaecat reprehenderit commodo officia dolor Lorem duis laboris cupidatat officia voluptate. Culpa proident adipisicing id nulla nisi laboris ex in Lorem sunt duis officia eiusmod. Aliqua reprehenderit commodo ex non excepteur duis sunt velit enim. Voluptate laboris sint cupidatat ullamco ut ea consectetur et est culpa et culpa duis.',
          ),
        ]);
  }
}
