

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center (

      child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,


        children:  [


          //Image.asset("assets/images/login_pic.png" ),
        //  Image(image: AssetImage('assets/images/login_pic.png')),
          Text("Welcome",textScaleFactor: 3) ,
        Padding(
          padding: EdgeInsets.fromLTRB(540,20,540,10),
         child: TextFormField(textAlign: TextAlign.center,
           decoration: InputDecoration(border: const OutlineInputBorder(),hintText: "Enter User Name", labelText: "User Name" ),),
        ),
          Padding(
            padding: EdgeInsets.fromLTRB(540, 10, 540, 20),
          child: TextFormField(textAlign: TextAlign.center, obscureText: true,
          decoration: InputDecoration(border: const OutlineInputBorder(),hintText: "Enter password", labelText: "Paasword"),
          ),
          ),


        ],

       ),



         ),
    );

  }

}