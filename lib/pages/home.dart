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
          backgroundColor: Colors.cyan,
          title: Text("Naveen appbar"),
        ),
        body: Center(
            child: Container(
                child: SingleChildScrollView(
                    child: Stack(children: <Widget>[
          Container(
              width: width * 0.9,
              //  height: height * 0.9,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.cyan[50],
              ),
              child: Column(children: [
                //Image.asset("assets/images/login_pic.png" ),
                //  Image(image: AssetImage('assets/images/login_pic.png')),
                const Text("Registration Form",
                    style: TextStyle(color: Colors.blueGrey),
                    textScaleFactor: 2),
                const SizedBox(
                  height: 2,
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
                      hintText: "First Name",
                      labelText: "First Name",
                      suffixIcon: Icon(Icons.app_registration_rounded),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "Family Name",
                      labelText: "Family Name",
                      suffixIcon: Icon(Icons.app_registration_rounded),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "Middle Name",
                      labelText: "Middle Name",
                      suffixIcon: Icon(Icons.app_registration_rounded),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "Email Id",
                      labelText: "Email Id",
                      suffixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        // style: TextStyle(color: Colors. red),
                        hintText: "Mobile Number",
                        labelText: "Mobile Number",
                        suffixIcon: Icon(Icons.phone)),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),

                Container(
                  // width: width*0.5  ,
                  // height: height*0.,
                  child: Column(children: [
                    const Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
                    ),
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
                      child: const Text('Submit', textScaleFactor: 2),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: const Text("Already have account click here")),
                  ]),
                )
              ]))
        ])))));
  }
}
