import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/widgets.dart';

import 'package:children/children.dart';

void main() {
  test('Filter out all non-Widget elements', () {
    final title = 'title';
    final contents = 'contents';
    final isExpanded = false;

    final key = UniqueKey();
    final column = Column(
      children: children([
        Text(title, key: key),
        isExpanded ? Text(contents) : null,
      ]),
    );
    expect(column.children, hasLength(1));
    expect(column.children[0], isA<Text>());
    expect((column.children[0] as Text).key, key);
  });
}
