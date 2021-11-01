import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

 Widget build(BuildContext context){
   return Scaffold( /*  here Scaffold or we can use Material design   */
        body: Center(
          child: Container(
             child: Text("hello naveen"),
        ),
      ),
    );
   
 }

}