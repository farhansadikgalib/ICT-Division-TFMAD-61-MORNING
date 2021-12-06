import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseRealtimeDatabaseWithDataView extends StatefulWidget {
  const FirebaseRealtimeDatabaseWithDataView({Key? key}) : super(key: key);

  @override
  _FirebaseRealtimeDatabaseWithDataViewState createState() =>
      _FirebaseRealtimeDatabaseWithDataViewState();
}

class _FirebaseRealtimeDatabaseWithDataViewState
    extends State<FirebaseRealtimeDatabaseWithDataView> {
  final databaseRef =
      FirebaseDatabase.instance.reference().child('User Registration');

  List<Map<dynamic, dynamic>> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase DataView"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: databaseRef.once(),
        builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
          if (snapshot.hasData) {
            list.clear();
            Map<dynamic, dynamic> values = snapshot.data!.value;
            values.forEach((key, value) {
              list.add(value);
            });

            return new ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text("User Name is " + list[index]['name']),
                      Text("User address is " + list[index]['address']),
                      Text("User phone is " + list[index]['phone']),
                      Text("User email is " + list[index]['email']),
                      Text("User password is " + list[index]['password']),
                    ],
                  );
                });
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
