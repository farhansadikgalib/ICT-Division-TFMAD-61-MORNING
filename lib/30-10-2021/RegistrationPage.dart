import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {



  var _value = 1;

  var formkey = GlobalKey<FormState>();


  var name,phone,email;

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();

  void hadleSignUP(){

    if(formkey.currentState!.validate()){

      formkey.currentState!.save();

      print("Name:${this.name}");


    }


}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,


      body: Form(
        key: formkey,
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
                  controller: nameController,

                  validator:(value){
                      if(value!.length == 0){
                        return ("Please Insert Your Name Here");
                      }
                  },

                    onSaved: (value){
                      this.name = value;
                    },



                  decoration: InputDecoration(
                  labelText: 'Enter Your Name',


                  ),


                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,

                  validator:(value){
                    if(value!.length == 0){
                      return ("Please Insert Your Name Phone Number");
                    }
                  },
                  onSaved: (value){

                    this.phone = value;

                  },

                  decoration: InputDecoration(
                    labelText: 'Enter Your Phone',

                  ),


                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  onSaved: (value){

                    this.email = value;

                  },

                  validator:(value){
                    if(value!.length == 0){
                      return ("Please Insert Your Email Address");
                    }
                  },

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


                DropdownButtonFormField(
                    hint: Text("Enter Your Status"),
                    onChanged:(value) {
                      setState(() {
                        print(value);
                      });
                    },

                    items: [

                  DropdownMenuItem(child: Text("Single"),
                    value: 'single',


                  ),
                  DropdownMenuItem(child: Text("Married"),
                  value: 'Married',
                  ),
                  DropdownMenuItem(child: Text("Devorced"),
                  value: 'Devorced',
                  ),



                ]),


                SizedBox(height: 30,),





                RaisedButton(onPressed:hadleSignUP,child: Text("Sign UP"),color: Colors.lightGreen,)




              ],

            ),
          ),
        ),
      ),




    );
  }
}
