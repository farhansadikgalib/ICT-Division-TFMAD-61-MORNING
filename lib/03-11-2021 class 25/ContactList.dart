import 'package:flutter/material.dart';
import 'package:registration_morning/03-11-2021%20class%2025/ContactData.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  final List contactList = [

    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },



    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },
    {
      "name": "Farhan",
      "phone": "01784152415"

    },
    {
      "name": "OJ",
      "phone": "9864517415421"
    },
    {
      "name": "Safin",
      "phone": "001741524185"
    },
    {
      "name": "Daniel",
      "phone": "012554185421"
    },
    {
      "name": "Aziz",
      "phone": "01896554545"
    },
    {
      "name": "Shakil",
      "phone": "01238747454"
    },



  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Contact List"),
        centerTitle: true,
      ),

      body: Center(
        child: ListView.builder(
            itemCount: contactList.length,
            itemBuilder: (BuildContext context,int index){
              return Column(
                children: [
                  ListTile(

                    tileColor: Colors.orangeAccent,
                    leading: CircleAvatar(

                      child: Text(contactList[index]["name"][0]),

                    ),
                    title: Text(contactList[index]["name"]),
                    subtitle: Text(contactList[index]["phone"]),


                    onTap: (){

                      Route route = MaterialPageRoute(builder: (context) =>ContactsData(contactList[index]));
                    Navigator.push(context, route);

                    },





                  )


                ],


              );

            }),
      ),


    );
  }
}
