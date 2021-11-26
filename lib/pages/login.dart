import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/pages/forgotpassword.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // to get system width height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Container(
                child: Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Positioned(
            top: width * 0.4,
            bottom: width * 0.5,
            right: width * 0.1,
            left: width * 0.1,
            child: Container(
              width: width * 0.9,
              // height: height * 0.9,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.cyan[50],
              ),
              child: Column(children: [
                const Text("Welcome",
                    style: TextStyle(color: Colors.blue), textScaleFactor: 3),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "User Name or Email id",
                      labelText: "User Name or Email id",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: "Enter your password",
                        labelText: "Password"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // width: width*0.5  ,
                // height: height*0.,

                Stack(clipBehavior: Clip.none, children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue[50]),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      //on click functionality here
                    },
                    child: const Text('Login', textScaleFactor: 2),
                  ),
                  const Positioned(
                    right: 10,
                    left: 10,
                    top: -9,
                    child: Icon(Icons.arrow_downward, color: Colors.blue),
                  ),
                ]),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text("Forgot Password ? click here")),
              ]),
            ),
          ),
        ),
      ],
    ))));
  }
}
