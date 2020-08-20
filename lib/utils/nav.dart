import 'package:flutter/material.dart';

class Nav {
  final NavigatorState navigator;

  const Nav(this.navigator);

  factory Nav.of(BuildContext context, {bool root = false}) {
    return Nav(Navigator.of(context, rootNavigator: root));
  }

  @optionalTypeArgs
  Future<T> presentScreen<T extends Object>(WidgetBuilder builder) async {
    return navigator.push(
      MaterialPageRoute(
        builder: builder,
        fullscreenDialog: true,
      ),
    );
  }

  @optionalTypeArgs
  Future<T> pushScreen<T extends Object>(WidgetBuilder builder) async {
    return navigator.push(MaterialPageRoute(builder: builder));
  }

  @optionalTypeArgs
  void pop<T extends Object>([T result]) {
    return navigator.pop(result);
  }
}
