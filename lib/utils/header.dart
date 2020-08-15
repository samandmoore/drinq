import 'package:drinq/utils/space.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;

  const Header(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          text,
          style: textTheme.headline3,
        ),
        const VSpace(byFactorOf: 2),
      ],
    );
  }
}
