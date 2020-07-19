import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;

  const BodyText(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      style: textTheme.bodyText2,
    );
  }
}
