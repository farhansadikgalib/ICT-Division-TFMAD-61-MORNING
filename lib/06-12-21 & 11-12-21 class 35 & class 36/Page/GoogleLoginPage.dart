import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_morning/06-12-21%20&%2011-12-21%20class%2035%20&%20class%2036/provider/GoogleSignInProvider.dart';
import 'package:registration_morning/06-12-21%20&%2011-12-21%20class%2035%20&%20class%2036/widget/SignUpWidget.dart';
import 'package:registration_morning/06-12-21%20&%2011-12-21%20class%2035%20&%20class%2036/widget/loginPageWidget.dart';

class GoogleLoginPage extends StatefulWidget {

  @override
  _GoogleLoginPageState createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {

 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      return print('initialized');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: Text("Login with Google"),
      centerTitle: true,


    ),

      body:ChangeNotifierProvider(
          create: (context)=> GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),

            builder: (context, snapshot){

              final provider = Provider.of<GoogleSignInProvider>(context);

              if(provider.isSigningIn){
                return builLoading();
              }

              else if(snapshot.hasData){
                return loginPageWidget();
              }
              else{
                return SignUpWidget();
              }


            },



          ),



      )


    );
  }

  Widget builLoading() => Stack(
    children: [
      Center(
        child: CircularProgressIndicator(),

      )

    ],

  );

}
