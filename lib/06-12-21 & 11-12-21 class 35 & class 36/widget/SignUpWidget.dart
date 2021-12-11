import 'package:flutter/material.dart';
import 'package:registration_morning/06-12-21%20&%2011-12-21%20class%2035%20&%20class%2036/widget/googleSignUpButtonWidget.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) => Stack(
    fit: StackFit.expand,
    children: [buildSignUp()],
  );

  Widget buildSignUp() => Column(
    children: [
      Spacer(),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          child: Text(
            "Welcome To Goole Login",
            style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.w900,fontSize:30 ),
          ),




        ),
      ),

      Spacer(),

      GoogleSignUpButtonWidget(),

      SizedBox(height: 15,),

      Text("Login to Continue",),

      Spacer()


    ],
  );
}