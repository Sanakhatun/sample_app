import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Flutter Sample App",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                "Column 1",
                textDirection: TextDirection.ltr,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, right: 8.0),
                          child: Text("Row 1",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  backgroundColor: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, right: 8.0),
                          child: Text("Row 2",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  backgroundColor: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                          child: Text("Row 3",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  backgroundColor: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 8.0, right: 8.0),
                            child: Text("Row 4",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    backgroundColor: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text("Row 5",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    backgroundColor: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))
                      ],
                    ),
                  ),
                ),
              ),
              Text("Column 3",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(backgroundColor: Colors.brown))
            ],
          )),
    );
  }
}
