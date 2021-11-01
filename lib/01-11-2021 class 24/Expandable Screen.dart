import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';

class ExpandableScreen extends StatefulWidget {
  const ExpandableScreen({Key? key}) : super(key: key);

  @override
  _ExpandableScreenState createState() => _ExpandableScreenState();
}

class _ExpandableScreenState extends State<ExpandableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Colors.amberAccent,


      body: Column(

        children: [


          Expandable(
            primaryWidget: Container(
              height: 30,
              child: Center(child: Text('Hello world!')),
            ),
            secondaryWidget: Container(
              height: 45,
              child: Center(
                child: Column(
                  children: [
                    Text('Hello'),
                    Text('World!'),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.grey.withOpacity(0.4),
            showArrowIcon: true,
            centralizePrimaryWidget: true,
            isClickable: true,
            animationDuration: Duration(seconds: 2),
            padding: EdgeInsets.all(5.0),
          ),


        ],

      ),



    );
  }
}
