import 'package:flutter/material.dart';

//Reference: https://docs.flutter.dev/development/ui/layout
void main() {
  runApp(MyStatelessWidget());
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
          child: Text(
        "Hi Sana",
        textDirection: TextDirection.ltr,
      )),
    );
  }
}
