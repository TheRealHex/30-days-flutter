import 'package:path_provider/path_provider.dart';

String todoPath = '';
String donePath = '';

void getPaths() async {
  var directory = await getApplicationDocumentsDirectory();
  todoPath = '${directory.path}/todo.txt';
  donePath = '${directory.path}/done.txt';
}
