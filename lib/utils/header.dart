import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;

  const Header(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      style: textTheme.headline3,
    );
  }
}
