import 'package:drinq/models/models.dart';
import 'package:drinq/utils/screen_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: '',
      body: Column(
        children: [
          Text('splash!'),
          OutlineButton(
            child: Text('log in'),
            onPressed: () =>
                userProvider.read(context).login(User(name: 'Sam')),
          )
        ],
      ),
    );
  }
}
