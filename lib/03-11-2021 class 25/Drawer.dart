import 'dart:ui';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Mango Juice"),
        centerTitle: true,
      ),

      drawer: Drawer(

        child: ListView(


          children: [

            DrawerHeader(



              child: Column(

                children: [


                  CircleAvatar(
                    child: Image.asset("assets/logo.png",height: 250,),


                  ),

                  SizedBox(height: 20,),
                  Text("Pepsi",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)


                ],

              ),
            ),








          ],



        ),

      ),



    );
  }
}
