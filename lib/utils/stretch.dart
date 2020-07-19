import 'package:flutter/material.dart';

class HStretch extends StatelessWidget {
  final Widget child;

  const HStretch({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: child, width: double.infinity);
  }
}
