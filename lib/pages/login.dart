

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // to get system width height
    double width= MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(

      body: Center (
        

      child: Column(
            
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,


        children:  [
          
           Container(
             width: width*0.4,
             height: height*0.5,
             
             child: Column(
               children: [

                 //Image.asset("assets/images/login_pic.png" ),
                 //  Image(image: AssetImage('assets/images/login_pic.png')),
                 Text("Welcome",textScaleFactor: 3) ,
                    SizedBox(height: 10,),
                 TextFormField(textAlign: TextAlign.center,
                   decoration: const InputDecoration(border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "Enter your login id", labelText: "Login id", 
                      
                     ),),

                    const SizedBox(height: 10,),
                  TextFormField(textAlign: TextAlign.center, obscureText: true,
                   decoration:const InputDecoration(border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20))
                   ),hintText: "Enter your password", labelText: "Password"),
                 ),
                    const SizedBox(height: 20,),

                    Container(
                     // width: width*0.5  ,
                     // height: height*0.,
                       child: Column(children: [
                           
                            ElevatedButton(
                         
                        style: ButtonStyle(
                          
                          shape:MaterialStateProperty.all( RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))) ,
                          backgroundColor: MaterialStateProperty.all( Colors.lightBlue[50]),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                       ),
                           onPressed: () {
                             //on click functionality here
                            },
                             child: Text('Login',textScaleFactor: 2),
                       ),
                       SizedBox(height: 5,),
                       TextButton(onPressed: (){}, child: Text("Forgot Password ? click here")),
                       ],)
                     
                      ),

               ],
             ),
           )




        ],

       ),



         ),
    );

  }

}