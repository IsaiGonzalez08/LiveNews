import 'package:flutter/material.dart';

class InitScreenVM extends ChangeNotifier {
  final BuildContext context;
  final Function navigateToLogin;

  InitScreenVM({required this.context, required this.navigateToLogin});

  init() async {}
}
