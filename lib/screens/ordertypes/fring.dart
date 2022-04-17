import 'package:flutter/material.dart';

class fringe extends StatefulWidget {
  const fringe({ Key? key }) : super(key: key);

  @override
  _fringeState createState() => _fringeState();
}

class _fringeState extends State<fringe> {

///////////  color variation  ////
  List <String>color_variation=[
    'choose color',
    'black',
    'brown',
    'blond',
    'light',
    'dark','green'

  ];
  String color='choose color';
////////////////////////////////////
////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.cyan[100],

        body:
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              children:[
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(
                      padding: EdgeInsets.all(10.0),
                      child: Column(children: [Text("add order")],),

                      onPressed: () {          },
                    ),
                  ],
                ),

// /////////////  refnum  ///////////
                TextFormField(

                  decoration: const InputDecoration(

                    border: UnderlineInputBorder(),

                    labelText: 'Enter your refnum',

                  ),

                ),
///////////////////////////////////////
////////////  quantity  ///////////////
                TextFormField(

                  decoration: const InputDecoration(

                    border: UnderlineInputBorder(),

                    labelText: 'Enter your quantity',

                  ),

                ),
                /////////////////////////

///////////////   color  //////////////
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DropdownButton<String>(
                      value: color,
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          color = newValue!;
                        });
                      },
                      items:color_variation
                          .map<DropdownMenuItem<String>>((String coval) {
                        return DropdownMenuItem<String>(
                          value: coval,
                          child: Text(coval),
                        );
                      }).toList(),
                    ),

                  ],
                ),

                ////////////////////////////////
                SizedBox(height: 20,),

                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RaisedButton(
                      padding: EdgeInsets.all(10.0),
                      child: Column(children: [Text("upload image"),Icon(Icons.camera_alt_outlined)],),

                      onPressed: () {          },
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RaisedButton(
                      padding: EdgeInsets.all(10.0),
                      child: Column(children: [Text("pick image"),Icon(Icons.camera_alt_outlined)],),

                      onPressed: () {          },
                    ),
                  ],
                ),



              ] ),
        ),
      );

//


  }
}



//////////////  cap type  ///////////////

