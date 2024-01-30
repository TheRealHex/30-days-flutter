import 'package:path_provider/path_provider.dart';

String todoPath = '';
String donePath = '';

void getPaths() async {
  try {
    var directory = await getApplicationCacheDirectory();
    todoPath = '${directory.path}/todo.txt';
    donePath = '${directory.path}/done.txt';
  } catch (e) {
    print('Error on path: $e');
  }
}
