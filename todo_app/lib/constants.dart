import 'package:path_provider/path_provider.dart';

String todoPath = '';
String donePath = '';

void getPaths() async {
  try {
    var directory = await getApplicationDocumentsDirectory();
    print(directory.path);

    todoPath = '${directory.path}/todo.txt';
    donePath = '${directory.path}/done.txt';

    print('$todoPath');
    print('$donePath');
  } catch (e) {
    print('Error on path: $e');
  }
}
