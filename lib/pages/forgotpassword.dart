import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatelessWidget {
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
                      child:
                      Positioned(
                          top: width*0.4,
                          bottom: width*0.5,
                          right: width*0.1,
                          left: width*0.1,

                          child:
                          Container(
                            width: width * 0.9,
                            // height: height * 0.9,
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.cyan[50],
                            ),
                            child: Column(
                              children: [
                                Text("Forgot Password",
                                    style: TextStyle(color: Colors.blueGrey),
                                    textScaleFactor: 2),
                                SizedBox(
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
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                      hintText: "Enter your email id",
                                      labelText: "Enter your email id",
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
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
                                          child: Text('Send OTP', textScaleFactor: 2),
                                        ),


                                      ],
                                    )),
                              ],
                            ),
                          )

                      ),
                    )
                  ],
                )
            )



        ));
  }
}