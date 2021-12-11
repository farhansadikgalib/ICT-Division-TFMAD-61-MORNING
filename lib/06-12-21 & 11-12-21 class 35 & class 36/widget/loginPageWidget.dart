import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registration_morning/06-12-21%20&%2011-12-21%20class%2035%20&%20class%2036/provider/GoogleSignInProvider.dart';

class loginPageWidget extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade400,
      alignment: Alignment.center,

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [


          Text('User Login Info'),

          SizedBox(height: 10,),

          CircleAvatar(
            maxRadius: 75,
            backgroundImage: NetworkImage(user!.photoURL!)
          ),

          SizedBox(height: 10,),

          Text('User Name'+ user!.displayName!),

          SizedBox(height: 10,),

          Text('User Email'+ user!.email!),


          ElevatedButton(onPressed:(){
            final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
            provider.logout();
          }, child: Text("Log Out"))
          //
          // SizedBox(height: 10,),
          //
          // Text('User phone'+ user!.phoneNumber!),

          // SizedBox(height: 10,),
          //
          // Text('User User ID'+ user!.uid!),






        ],

      ),


    );
  }
}


