import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  ForgotpasswordState createState() {
    return ForgotpasswordState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class ForgotpasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // to get system width height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Form(
            key: _formKey,
            child: Center(
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
                          child: Column(
                            children: [
                              const Text("Forgot Password",
                                  style: TextStyle(color: Colors.blue),
                                  textScaleFactor: 2),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.cyan),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    hintText: "Enter your email id",
                                    labelText: "Enter your email id",
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter email id';
                                    } else if (!value.contains('@') ||
                                        !value.contains('.')) {
                                      return 'please enter valid email id';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.lightBlue[50]),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue),
                                    ),
                                    onPressed: () {
                                      //on click functionality here
                                      // Validate returns true if the form is valid, or false otherwise.
                                      if (_formKey.currentState!.validate()) {
                                        // If the form is valid, display a snackbar. In the real world,
                                        // you'd often call a server or save the information in a database.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text('Processing Data')),
                                        );
                                      }
                                    },
                                    child: const Text('Send OTP',
                                        textScaleFactor: 2),
                                  ),
                                  const Positioned(
                                    right: 10,
                                    left: 10,
                                    top: -9,
                                    child: Icon(Icons.arrow_downward,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ))),
                )
              ],
            )))));
  }
}
