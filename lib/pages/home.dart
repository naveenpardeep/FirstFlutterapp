import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

 Widget build(BuildContext context){
   return Scaffold( /*  here Scaffold or we can use Material design   */
       appBar: AppBar(
     
     
         backgroundColor: Colors.black,
         title: Text("Naveen appbar"),
         ),
        body: Center(
          child: Container(
             child: Text("hello naveen"),
        ),
      ),
   drawer: Drawer(
  ),
    );
 
 }


}