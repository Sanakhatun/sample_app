import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        // child: SingleChildScrollView(
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              //Add Image here

              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Sample App",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding:
                              const EdgeInsets.only(top: 16.0, bottom: 16.0),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.green),
                          )),
                      TextFormField(
                        textDirection: TextDirection.ltr,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle),
                          labelText: "Username",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: TextFormField(
                          textDirection: TextDirection.ltr,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                              suffixIcon: Icon(Icons.remove_red_eye)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              padding: EdgeInsets.all(16.0)),
                          child: Text(
                            "Sign In",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            print("Sign In button Clicked");
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  children: [
                                TextSpan(
                                    text: "Reset Password",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print("Reset Password Clicked");
                                      }),
                                TextSpan(text: " | "),
                                TextSpan(
                                    text: "Forgot Password",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print("Forgot Password clicked");
                                      }),
                              ])),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              flex: 3,
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: [
                    Text(
                      "myApp",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple),
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                            children: [
                          TextSpan(text: "Version "),
                          TextSpan(text: "1.0")
                        ])),
                  ],
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ],
        )),
      ),
      // )
    );
  }
}
