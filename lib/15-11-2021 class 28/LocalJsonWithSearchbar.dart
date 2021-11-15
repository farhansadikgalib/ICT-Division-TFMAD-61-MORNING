import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalJsonWithSearchBar extends StatefulWidget {
  const LocalJsonWithSearchBar({Key? key}) : super(key: key);

  @override
  _LocalJsonWithSearchBarState createState() => _LocalJsonWithSearchBarState();
}

class _LocalJsonWithSearchBarState extends State<LocalJsonWithSearchBar> {

  late List readydata;
  late List unfilterData;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/readydata.json');

    setState(() {
      readydata = jsonDecode(jsonText);
    });
    this.unfilterData =readydata;

    return 'Successfully Get Data';
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.loadJsonData();
  }

  searchBar(str){
    var srtingExist = str.length > 0 ? true : false;

    if(srtingExist){
      var filterData = [];

      for(int i =0 ; i<unfilterData.length;i++){

        String name = unfilterData[i]['name'].toUpperCase();

        if(name.contains(str.toUpperCase())){
          filterData.add(unfilterData[i]);
        }

        setState(() {
          this.readydata = filterData;
        });

      }

    }
    else{
      setState(() {
        this.readydata = this.unfilterData;
      });

    }



  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Local Json With Searchbar"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      TextField(
      decoration: InputDecoration(
      hintText: 'Search Here',
        icon: Icon(Icons.search),
      ),
        onChanged: (String str){
        this.searchBar(str);
        print(str);

        },

    ),

    Expanded(
    child: ListView.builder(
    itemCount:readydata.length,
    itemBuilder: (BuildContext context,int index){
      return Column(

      children: [

        ListTile(
          leading: CircleAvatar(
            child: Text(readydata[index]['name'][0]),
          ),
          title: Text(readydata[index]['name']),
          subtitle: Text(readydata[index]['phone']),



        )


      ],

      );

    })

    )

    ]
    ,

    ),


    );
  }
}
