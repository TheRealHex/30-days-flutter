import 'package:path_provider/path_provider.dart';

String todoPath = 'todo.txt';
String donePath = 'done.txt';

void getPaths() async {
  var directory = await getApplicationCacheDirectory();
  todoPath = '${directory.path}/todo.txt';
  donePath = '${directory.path}/done.txt';
}
