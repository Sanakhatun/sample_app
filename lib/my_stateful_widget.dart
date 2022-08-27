import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var myColor = Colors.red;

  changeColor() {
    setState(() {
      myColor = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          color: myColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Card(
                    child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 50.0,
                      ),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Sana Shaikh",
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    "Sr. Mobile Application Devloper",
                                    textDirection: TextDirection.ltr,
                                  )
                                ],
                              ))),
                      IconButton(
                          onPressed: () {
                            print("Comment");
                          },
                          icon: Icon(Icons.comment))
                    ],
                  ),
                )),
              ),
              TextButton(
                onPressed: () {
                  print("Hi Sana");
                  changeColor();
                },
                child: Text(
                  "Click Me!",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
            ],
          ),
        ));
  }
}
