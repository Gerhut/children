import 'package:children/children.dart';
import 'package:test/test.dart';

void main() {
  test('Filter all non-null values in a Dart list.', () {
    expect(children([1, 2, null, 3]), equals([1, 2, 3]));
  });
}
