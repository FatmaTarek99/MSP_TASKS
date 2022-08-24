import 'package:flutter/cupertino.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:msp_tasks/counter_screen.dart';


class SplashScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('images/flutter-logo.png',),
      logoSize: 100.0,
      title: Text('Splash Screen',),
      durationInSeconds: 5,
      navigator: CounterScreen(),
      loaderColor: Colors.blue,
      loadingText: Text('Loading...',),


    );
  }
}