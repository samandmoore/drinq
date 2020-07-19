import 'package:flutter/material.dart';

class ScreenScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget fab;

  const ScreenScaffold({
    Key key,
    @required this.title,
    @required this.body,
    this.fab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: body,
      ),
      floatingActionButton: fab,
    );
  }
}
