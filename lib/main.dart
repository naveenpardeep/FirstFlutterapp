import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
    /*  home:Home(),   we gave path in routes so no need here*/
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark),
      
      initialRoute: "/login", // to set the first launch page of app

      routes: {
        "/" : (Context)=> Home(),
       // "/login": (Context)=> Login(),
      },
    );

  

}
}

