# children

[![Codemagic build status](https://api.codemagic.io/apps/5d22d7268a8d58203fa77cec/5d22d7268a8d58203fa77ceb/status_badge.svg)](https://codemagic.io/apps/5d22d7268a8d58203fa77cec/5d22d7268a8d58203fa77ceb/latest_build)

Filter out all non-widgets from an iterable, used in `children` parameter of multi-child layout widgets.

## Usage

```dart
import 'package:flutter/widgets.dart';

import 'package:children/children.dart';

class Post extends StatelessWidget {
  final String title;
  final String contents;
  final bool isExpanded;

  Post({Key key, this.title, this.contents, this.isExpanded = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children([
        Text(title),
        isExpanded ? Text(contents) : null,
      ]),
    );
  }
}
```

## License

MIT
