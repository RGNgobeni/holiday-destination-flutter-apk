import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holiday_destination/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void iniState(){
    //TOT: implement inistate
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
  @override
  Widget build(BuildContext context){
return MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    scaffoldBackgroundColor: Colors.grey,
  ),
  home: WelcomeScreen(),
);
  }
}

