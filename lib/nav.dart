import 'package:flutter/material.dart';

class Nav {
  final NavigatorState navigator;

  const Nav(this.navigator);

  factory Nav.of(BuildContext context, {bool root = false}) {
    return Nav(Navigator.of(context, rootNavigator: root));
  }

  Future<T> presentScreen<T>(WidgetBuilder builder) async {
    return navigator.push(
      MaterialPageRoute(
        builder: builder,
        fullscreenDialog: true,
      ),
    );
  }

  void pop<T>([T result]) {
    return navigator.pop(result);
  }
}
