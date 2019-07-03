# children

[![Build Status](https://travis-ci.com/Gerhut/children.svg?branch=master)](https://travis-ci.com/Gerhut/children)

Filter all non-null values in a Dart list.

## Usage

A simple usage example:

```dart
import 'package:children/children.dart';

main() {
  var originalList = [
    "There",
    "should",
    "not",
    "be",
    "any",
    null,
    "in",
    "list"
  ];
  var filteredList = children(originalList);
  print('originalList: ${originalList}');
  print('filteredList: ${filteredList}');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/Gerhut/children/issues
