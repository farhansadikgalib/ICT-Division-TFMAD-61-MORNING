import 'dart:async';

import 'package:flutter/material.dart';
import 'package:registration_morning/27-10-2021/RegistrationPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 1),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => RegistrationPage()),
            (route) => false));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      
      body: Center(
        child: Column(

          children: [

            SizedBox(height: 50,),

            Text("Welcom To My APp",style: TextStyle(fontSize: 30),),

            Spacer(),

            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Pepsi_logo_2014.svg/220px-Pepsi_logo_2014.svg.png'),

            Spacer(),

            CircularProgressIndicator(),

            SizedBox(height: 50,),




          ],


        ),
      ),
      
      
    );
  }
}
