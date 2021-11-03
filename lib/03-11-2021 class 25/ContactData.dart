

import 'package:flutter/material.dart';

class ContactsData extends StatefulWidget {
  // const ContactsData(contactList, {Key? key}) : super(key: key);

  var readyContacts;
  ContactsData(this.readyContacts);


  @override
  _ContactsDataState createState() => _ContactsDataState(this.readyContacts);
}

class _ContactsDataState extends State<ContactsData> {


 var ready;
 _ContactsDataState(this.ready);




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightBlueAccent,

      appBar: AppBar(

        title: Text("Contacts details"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(" Name:${ready['name']}",style: TextStyle(color: Colors.white),),
            Text(" phone:${ready['phone']}",style: TextStyle(color: Colors.white),),

          ],

        ),
      ),


    );
  }
}
