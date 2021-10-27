import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {



  var _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,


      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 30,left: 30),
            child: Column(
              children: [

                SizedBox(height: 50,),

                Text(" Registration Page",style: TextStyle(fontSize: 25),),

                SizedBox(height: 75,),

                  TextFormField(
                    keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                  labelText: 'Enter Your Name',

                  ),


                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Phone',

                  ),


                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Email',

                  ),


                ),


                Row(
                  children: [
                    Row(
                      children: [

                        Radio(value: 1, groupValue: _value, onChanged: (value){

                          setState(() {
                            value = _value;
                          });
                        }),
                        SizedBox(width: 10,),
                        Text("Male")

                      ],

                    ),
                    Row(
                      children: [

                        Radio(value: 2, groupValue: _value, onChanged: (value){

                          setState(() {
                            value= _value ;
                          });

                        }),
                        SizedBox(width: 10,),
                        Text("Female")

                      ],

                    ),

                  ],
                ),


                SizedBox(height: 30,),





                RaisedButton(onPressed: (){},child: Text("Sign UP"),color: Colors.lightGreen,)




              ],

            ),
          ),
        ),
      ),




    );
  }
}
