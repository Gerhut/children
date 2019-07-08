library children;

import 'package:flutter/widgets.dart';

/// Filter out all non-Widget elements from [iterable].
List<Widget> children(Iterable iterable) {
  return List.from(iterable.whereType<Widget>());
}
