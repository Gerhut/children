import 'package:flutter/material.dart';

import 'package:children/children.dart';

class Post extends StatefulWidget {
  final String title;
  final String contents;
  final bool isInitialExpanded;

  Post({Key key, this.title, this.contents, this.isInitialExpanded = false})
      : super(key: key);

  @override
  State<Post> createState() => PostState(isExpanded: isInitialExpanded);
}

class PostState extends State<Post> {
  bool isExpanded;

  PostState({ this.isExpanded }) : super();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: children([
        Row(
          children: children([
            Text(widget.title, style: theme.textTheme.display1),
            isExpanded ? null : FlatButton(
              child: Text('Expend'),
              onPressed: onExpandedButtonPressed,
            ),
          ]),
        ),
        isExpanded ? Text(widget.contents, style: theme.textTheme.body1) : null,
      ]),
    );
  }

  void onExpandedButtonPressed() {
    setState(() {
      isExpanded = true;
    });
  }
}

void main() => runApp(
  MaterialApp(
    home: Material(
      child: SafeArea(
        child: Post(title: 'Title', contents: 'Contents'),
      ),
    ),
  ),
);
