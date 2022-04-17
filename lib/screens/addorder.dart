
import 'package:flutter/material.dart';
import 'package:wigzawy/screens/ordertypes/fring.dart';
import 'package:wigzawy/screens/ordertypes/toupee.dart';
import 'package:wigzawy/screens/ordertypes/wigs.dart';

import 'ordertypes/syntichs.dart';

class addorder   extends StatefulWidget {
  const addorder({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<addorder> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    wigs(),

    Text(
      'Index 6: custemized',
      style: optionStyle,
    ),


    Text(
      'Index 2: delete',
      style: optionStyle,
    ),
    Text(
      'Index 3: my profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

////////////   cap size  ///////////
  List <String>cap_size_var=[
    'choose cap size',
    'small',
    'large',
    'medium',


  ];
  String cap_size='choose cap size';
/////////////////////////////////////
/////////  cap type  ////////////
  List <String>cap_type_var=[
    'choose cap type',
    'full lace',
    'front lace',

  ];
  String cap_type='choose cap type';


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,

      child: Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(backgroundColor: Colors.cyan,
          flexibleSpace: Container(decoration:BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28),bottomRight: Radius.circular(28)),
            gradient: LinearGradient(colors: [Colors.cyan,Colors.cyan],begin: Alignment.bottomCenter,end:Alignment.bottomCenter),)),
          elevation: 20,
          titleSpacing: 20,
          title: Text("Categories"),
          centerTitle: true,bottom: TabBar(tabs: [
            Tab(text:'wigs',icon:Icon(Icons.access_alarms)),
            Tab(text:'toupee',icon:Icon(Icons.access_alarms)),
            Tab(text:'fringe',icon:Icon(Icons.access_alarms)),        Tab(text:'syntechs',icon:Icon(Icons.access_alarms))



          ],),
        ),

        body:   TabBarView(children: [
          Center(child: wigs(),),Center(child:toupee() ,
          ),
          Center(child:fringe(),) ,

          Center(child:syntchs(),) ,

        ]) ,
      ),
    );
  }

}





























// import 'package:flutter/material.dart';

// class addorder extends StatefulWidget {
//   const addorder({ Key? key }) : super(key: key);

//   @override
//   _addorderState createState() => _addorderState();
// }

// class _addorderState extends State<addorder> {
//   /////////////  length  ////////////
//   List <String>length_variation=[
//   'choose length',
//   '8   inch',
//   '10   inch',
//   '12   inch',
//   '14   inch',
//   '16   inch',
//   '18   inch',
//   '20   inch',
//   '22   inch',
//   '24   inch',
//   '26   inch',
//   '28   inch',
// ];
// String selected='choose length';
// ///////////////////////////////////
// ///////////  color variation  ////
//   List <String>color_variation=[
//   'choose color',
//   'black',
//   'brown',
//   'blond',
//   'light',
//   'dark','green'

// ];
// String color='choose color';
// ////////////////////////////////////
// ////////  density  ////////////
//   List <String>density_var=[
//   'choose density',
//   '130  %',
//   '150  %',
//   '180  %',
//   '200  %',
//   '250  %'

// ];
// String density='choose density';
// ////////////////////////////////
// ////////////   cap size  ///////////
//   List <String>cap_size_var=[
//   'choose cap size',
//   'small',
//   'large',
//   'medium',


// ];
// String cap_size='choose cap size';
// /////////////////////////////////////
// /////////  cap type  ////////////
//   List <String>cap_type_var=[
//   'choose cap type',
//   'full lace',
//   'front lace',

// ];
// String cap_type='choose cap type';
// ////////////////////////////////
// /////////  order types  /////////
//   List <String>order_types=[
//   'choose order type',
//   'wigs',
//   'toupee',
//   'woman'

// ];
// String types_order='choose order types';



// ////////////////////////////
// /////   visibility  ///////////
// bool isvisible=true;
// bool _enabled=true;
// ///////////////////////////////////
//   @override
//   Widget build(BuildContext context) {

//     var _onpressed;
// If
//    (_enabled){_onpressed=(){setState(() {
//         isvisible=!isvisible;
//       });};}

//       bool _flag = true;
//     return  Scaffold(
//       appBar:AppBar(title: Text("new order"), actions: [
//           // RaisedButton(
//           //       child: Text('new_order', style: TextStyle(fontSize: 20.0),),
//           //       onPressed: () {     add_order();      },
//           //     ),
//               ////////////
//               ElevatedButton(
//                                 onPressed: () {        },

//           child: Text(_flag ? 'new order' : 'Green'),
//           style: ElevatedButton.styleFrom(
//             primary: _flag ? Colors.cyan[100] : Colors.teal, // This is what you need!
//           ),
//         ),
//                 ],
//         backgroundColor: Colors.cyan,) ,
//       body:
//     Padding(
//       padding: EdgeInsets.all(20),
//       child: Column(
//         children: [
//                       Row(
//                         children: [
//                           ButtonBar(

//         alignment: MainAxisAlignment.start,

//         children: [

//       //////////////  button bar  /////////////////

//       RaisedButton(onPressed:(){wigs();}
//       ,child: Text("wigs"),hoverColor: Colors.cyan,),
//       RaisedButton(onPressed:(){ },child: Text("toupee",),hoverColor: Colors.cyan,),
//       RaisedButton(onPressed:  (){  },child: Text("woman"),hoverColor: Colors.cyan,)    ,
//       RaisedButton(onPressed: (){},child: Text("mens"),hoverColor: Colors.cyan,),]),
//       ////////////////////

//                         ],
//                       ),
// PageView(
//   children: [
//     wigs(),
//   ],
// ),
// /////////////  refnum  ///////////
// // TextFormField(

// //               decoration: const InputDecoration(

// //                 border: UnderlineInputBorder(),

// //                 labelText: 'Enter your refnum',

// //               ),

// //             ),
// // ///////////////////////////////////////

// // ////////   length //////////
// //           Visibility(
// //             visible: isvisible,
// //             child: DropdownButton<String>(
// //               value: selected,
// //               elevation: 16,
// //               style: const TextStyle(color: Colors.deepPurple),
// //               underline: Container(
// //                 height: 2,
// //                 color: Colors.deepPurpleAccent,
// //               ),
// //               onChanged: (String? newValue) {
// //                 setState(() {
// //                   selected = newValue!;
// //                 });
// //               },
// //               items:length_variation
// //                   .map<DropdownMenuItem<String>>((String value1) {
// //                 return DropdownMenuItem<String>(
// //                   value: value1,
// //                   child: Text(value1),
// //                 );
// //               }).toList(),
// //             ),
// //           ),
// //           //////////////////////////
// // SizedBox(height: 20,),
// // ///////////////   color  //////////////
// //           DropdownButton<String>(
// //             value: color,
// //             elevation: 16,
// //             style: const TextStyle(color: Colors.deepPurple),
// //             underline: Container(
// //               height: 2,
// //               color: Colors.deepPurpleAccent,
// //             ),
// //             onChanged: (String? newValue) {
// //               setState(() {
// //                 color = newValue!;
// //               });
// //             },
// //             items:color_variation
// //                 .map<DropdownMenuItem<String>>((String coval) {
// //               return DropdownMenuItem<String>(
// //                 value: coval,
// //                 child: Text(coval),
// //               );
// //             }).toList(),
// //           ),
// //           ////////////////////////////////
// // SizedBox(height: 20,),
// // //////////////////  density  /////////////////
// //           Visibility(            visible: isvisible,

// //             child: DropdownButton<String>(
// //               value: density,
// //               elevation: 16,
// //               style: const TextStyle(color: Colors.deepPurple),
// //               underline: Container(
// //                 height: 2,
// //                 color: Colors.deepPurpleAccent,
// //               ),
// //               onChanged: (String? newValue) {
// //                 setState(() {
// //                   density = newValue!;
// //                 });
// //               },
// //               items:density_var
// //                   .map<DropdownMenuItem<String>>((String densityval) {
// //                 return DropdownMenuItem<String>(
// //                   value: densityval,
// //                   child: Text(densityval),
// //                 );
// //               }).toList(),
// //             ),
// //           ),
// //           //////////////////////////////
// // SizedBox(height: 20,),
// // /////////////////  cap size  ///////////////
// //           DropdownButton<String>(
// //             value: cap_size,
// //             elevation: 16,
// //             style: const TextStyle(color: Colors.deepPurple),
// //             underline: Container(
// //               height: 2,
// //               color: Colors.deepPurpleAccent,
// //             ),
// //             onChanged: (String? newValue) {
// //               setState(() {
// //                 cap_size = newValue!;
// //               });
// //             },
// //             items:cap_size_var
// //                 .map<DropdownMenuItem<String>>((String capsizeval) {
// //               return DropdownMenuItem<String>(
// //                 value: capsizeval,
// //                 child: Text(capsizeval),
// //               );
// //             }).toList(),
// //           ),
// // ////////////////////////////////////////////////
// // //////////////  cap type  ///////////////

// //           DropdownButton<String>(
// //             value: cap_type,
// //             elevation: 16,
// //             style: const TextStyle(color: Colors.deepPurple),
// //             underline: Container(
// //               height: 2,
// //               color: Colors.deepPurpleAccent,
// //             ),
// //             onChanged: (String? newValue) {
// //               setState(() {
// //                 cap_type = newValue!;
// //               });
// //             },
// //             items:cap_type_var
// //                 .map<DropdownMenuItem<String>>((String captypeval) {
// //               return DropdownMenuItem<String>(
// //                 value: captypeval,
// //                 child: Text(captypeval),
// //               );
// //             }).toList(),
// //           ),
// // SizedBox(height: 20,),
// // Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

// //   children: [//////////////  upload image  //////////////
// // RaisedButton(
// //   padding: EdgeInsets.all(10.0),
// //         child: Column(children: [Icon(Icons.camera_alt_outlined),Text("upload image")],),
// //         onPressed: () {          },
// //       ),

// //     SizedBox(width: 50), // give it width
// //                ///////////////////////////////
// // // 11111111111111111111Spacer(),
// //           ///////////  pick camera  ////////////
// // RaisedButton(
// //   padding: EdgeInsets.all(10.0),
// //         child: Column(children: [Icon(Icons.camera_alt_outlined),Text("pick picture")],),

// //         onPressed: () {          },
// //       ),

// // ],),

//         ],
//       ),
//     )

//                   );





//   }
//   wigs(){
//     return //////////////  cap type  ///////////////

//           DropdownButton<String>(
//             value: cap_type,
//             elevation: 16,
//             style: const TextStyle(color: Colors.deepPurple),
//             underline: Container(
//               height: 2,
//               color: Colors.deepPurpleAccent,
//             ),
//             onChanged: (String? newValue) {
//               setState(() {
//                 cap_type = newValue!;
//               });
//             },
//             items:cap_type_var
//                 .map<DropdownMenuItem<String>>((String captypeval) {
//               return DropdownMenuItem<String>(
//                 value: captypeval,
//                 child: Text(captypeval),
//               );
//             }).toList(),
//           );


//   }
// }


// //   List <String>order_types=[
// //   'choose order type',
// //   'wigs',
// //   'toupee',
// //   'woman'

// // ];
// // String types_order='choose order type';
//           ///////////////   order types  //////////////
//           // DropdownButton<String>(
//           //   value: types_order,
//           //   elevation: 16,
//           //   style: const TextStyle(color: Colors.deepPurple),
//           //   underline: Container(
//           //     height: 2,
//           //     color: Colors.deepPurpleAccent,
//           //   ),
//           //   onChanged: (String? newValue) {
//           //     setState(() {
//           //       types_order = newValue!;
//           //       isvisible=!isvisible;
//           //     });
//           //   },
//           //   items:order_types
//           //       .map<DropdownMenuItem<String>>((String typs) {
//           //     return DropdownMenuItem<String>(
//           //       value: typs,
//           //       child: Text(typs),
//           //     );
//           //   }).toList(),
//           // ),
//           ////////////////////////////////
