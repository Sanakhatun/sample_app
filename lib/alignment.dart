import 'package:flutter/material.dart';

class AlignmentWidget extends StatelessWidget {
  const AlignmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            child: Text(
              "Top",
              textDirection: TextDirection.ltr,
              style: TextStyle(backgroundColor: Colors.red),
            ),
            alignment: Alignment.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                child: Text("left",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      backgroundColor: Colors.green,
                    )),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: Text(
                  "right",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(backgroundColor: Colors.blue),
                ),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
          Align(
            child: Text(
              "bottom",
              textDirection: TextDirection.ltr,
              style: TextStyle(backgroundColor: Colors.yellow),
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    ));
  }
}
