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
      body: SafeArea(child: LayoutBuilder(
          builder: (BuildContext buildContext, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/images/background.jpg',
                    width: 150,
                    height: 250,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          textDirection: TextDirection.ltr,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle),
                              labelText: "Collector User ID",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                              ),
                              hintStyle: TextStyle(color: Colors.black54)),
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                ),
              ],
            ),
          ),
        );
      })),
    );
  }
}
