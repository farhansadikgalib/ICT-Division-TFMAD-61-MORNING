import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:registration_morning/06-12-21%20&%2011-12-21%20class%2035%20&%20class%2036/provider/GoogleSignInProvider.dart';

class GoogleSignUpButtonWidget extends StatelessWidget {
  const GoogleSignUpButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: OutlineButton.icon(
            icon: FaIcon(FontAwesomeIcons.google),
            label: Text(
              "Sign Up WIth Google",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            onPressed: (){
              final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
              provider.login();

            },



        ),


      );
}
