import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class GridViewWithCardDesign extends StatefulWidget {
  const GridViewWithCardDesign({Key? key}) : super(key: key);

  @override
  _GridViewWithCardDesignState createState() => _GridViewWithCardDesignState();
}

class _GridViewWithCardDesignState extends State<GridViewWithCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),

      body: GridView.count(crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      padding: EdgeInsets.only(top: 20,left: 20,right: 20),

      children: [
        Card(
          color: Colors.green,
          elevation: 15,
          child: Container(
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(20)
              
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Icon(Icons.add_comment),
                  SizedBox(height: 10,),
                  Text("Add Comment",style: TextStyle(fontSize: 12),)



                ],

              ),
            ),
          ),
        ),
        Container(color: Colors.red,),
        Container(color: Colors.cyan,),
        Container(color: Colors.deepOrange,),
        Container(color: Colors.green,),
        Container(color: Colors.purple,),
        Container(color: Colors.cyan,),
        Container(color: Colors.red,),
        Container(color: Colors.lightGreen,),
        Container(color: Colors.cyan,),
        Container(color: Colors.green,),
        Container(color: Colors.purple,),

      ],
      ),




    );
  }
}
