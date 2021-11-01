import 'package:flutter/material.dart';

void main() {
  runApp(flutter_application_1());

}
class flutter_application_1  extends StatelessWidget{
  const flutter_application_1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
             child: Text("hello naveen"),
        ),
      ),
    ),
    );

  }

}

