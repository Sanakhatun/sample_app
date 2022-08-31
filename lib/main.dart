import 'package:flutter/material.dart';

import 'features/onboarding/presentation/login/login.dart';
import 'my_stateful_widget.dart';
import 'my_stateless_widget.dart';

//Reference: https://docs.flutter.dev/development/ui/layout

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}
