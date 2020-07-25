import 'package:flutter/material.dart';

class VSpace extends StatelessWidget {
  final int factor;

  const VSpace({Key key, int byFactorOf = 1})
      : factor = byFactorOf,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: factor * 8.0);
  }
}
