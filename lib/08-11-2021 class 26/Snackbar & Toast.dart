import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:fluttertoast/fluttertoast.dart';

class snackbarAndToast extends StatefulWidget {
  const snackbarAndToast({Key? key}) : super(key: key);

  @override
  _snackbarAndToastState createState() => _snackbarAndToastState();
}

class _snackbarAndToastState extends State<snackbarAndToast> {

  final GlobalKey _globalKey = GlobalKey();
  void showToast() {
    Fluttertoast.showToast(
        msg: 'Ok deal done',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.cyan,
        textColor: Colors.white
    );
  }


  showExitPopUp(){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Confim"),
            content: Text("Do you wnant to exit this app"),
            actions: <Widget> [

              RaisedButton(
                  child: Text("No"),
                  color: Colors.lightGreen,
                  onPressed: (){

                    Navigator.of(context).pop();


                  }),
              RaisedButton(
                  child: Text("Yes"),
                  color: Colors.redAccent,
                  onPressed: (){
                    SystemNavigator.pop();

                  }),

            ],

          );
        }

    );


  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        onWillPop: ()async{

         return showExitPopUp();

        },

      child: Scaffold(
        key: _globalKey,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GlowButton(
                  child: GlowText(
                    "Snackbar",
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {

                    setState(() {
                      var snackbar = SnackBar(content: Text("Yeah It's cool!"));
                      // _globalKey.currentState!.showSnackBar(snackbar);

                    });

                  }),

              GlowButton(
                  child: GlowText(
                    "Show Toast",
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed:showToast

              )
            ],
          ),
        ),


      ),
    );
  }
}


