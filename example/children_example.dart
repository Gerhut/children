import 'package:children/children.dart';

main() {
  var originalList = ["There", "should", "not", "be", "any", null, "in", "list"];
  var filteredList = children(originalList);
  print('originalList: ${originalList}');
  print('filteredList: ${filteredList}');
}
