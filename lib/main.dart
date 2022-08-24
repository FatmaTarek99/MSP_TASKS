import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msp_tasks/tabbar_screen.dart';
import 'package:google_fonts/google_fonts.dart';


import 'splash_screen.dart';

void main(){
runApp(MyApp());

}

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme:ThemeData(
      //fontFamily: GoogleFonts.pacifico(fontSize: 30.0,),
    ),
  debugShowCheckedModeBanner: false,
    home: TabBarScreen(),
);
  }
}
