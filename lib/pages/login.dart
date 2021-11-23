import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            Container(
              width: width * 0.6,
              height: height * 0.9,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.cyan[50],
              ),
              child: Column(
                children: [
                  Text("Welcome",
                      style: TextStyle(color: Colors.blueGrey),
                      textScaleFactor: 3),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
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
                        color: Colors.black),
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
                  Container(
                      // width: width*0.5  ,
                      // height: height*0.,
                      child: Column(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue[50]),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          //on click functionality here
                        },
                        child: Text('Login', textScaleFactor: 2),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Forgot Password ? click here")),
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
