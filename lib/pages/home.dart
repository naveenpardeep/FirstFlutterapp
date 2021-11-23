import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        /*  here Scaffold or we can use Material design   */

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Naveen appbar"),
        ),
        body: Center(
            child: Container(
                child: Stack(children: <Widget>[
          Container(
              width: width * 0.6,
              height: height * 0.9,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.cyan[50],
              ),
              child: Column(children: [
                //Image.asset("assets/images/login_pic.png" ),
                //  Image(image: AssetImage('assets/images/login_pic.png')),
                Text("Registration Form",
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "First Name",
                      labelText: "First Name",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: "Family Name",
                        labelText: "Family Name"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: "Middle Name",
                        labelText: "Middle Name"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: "Email Id",
                        labelText: "Email Id"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: "Mobile Number",
                        labelText: "Mobile Number"),
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
                      child: Text('Submit', textScaleFactor: 2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text("Already have account click here")),
                  ],
                ))
              ]))
        ]))));
  }
}
