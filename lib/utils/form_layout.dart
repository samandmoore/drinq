import 'package:drinq/utils/space.dart';
import 'package:flutter/material.dart';

class FormLayout extends StatelessWidget {
  final List<Widget> items;

  const FormLayout(this.items, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.expand((entry) {
        return [
          entry.value,
          if (entry.key < items.length) const VSpace(byFactorOf: 2)
        ];
      }).toList(growable: false),
    );
  }
}
