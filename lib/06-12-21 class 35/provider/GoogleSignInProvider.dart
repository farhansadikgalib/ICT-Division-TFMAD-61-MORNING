import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{

final googleSignIn = GoogleSignIn();
bool _isSignIn = false;


GoogleSignInProvider(){
  _isSignIn = false;
}


bool get isSignIn => _isSignIn;


set isSigningIn(bool isSigningIn){

  _isSignIn = isSigningIn;
  notifyListeners();

}

Future login() async{

   isSigningIn = true;

   final user = await googleSignIn.signIn();

   if(user == null){
     isSigningIn = false;
     return;
   }else{
     final googleAuth = await user.authentication;

     final credintial = GoogleAuthProvider.credential(

       accessToken: googleAuth.accessToken,
       idToken: googleAuth.idToken
     );

     await FirebaseAuth.instance.signInWithCredential(credintial);

     isSigningIn = false;


   }


}


void logout()async{
  await googleSignIn.disconnect();
  FirebaseAuth.instance.signOut();

}





}