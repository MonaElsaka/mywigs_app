import 'package:flutter/material.dart';

class wigs extends StatefulWidget {
  const wigs({Key? key}) : super(key: key);

  @override
  _wigsState createState() => _wigsState();
}

class _wigsState extends State<wigs> {
  /////////////  length  ////////////
  List<String> length_variation = [
    'choose length',
    '8   inch',
    '10   inch',
    '12   inch',
    '14   inch',
    '16   inch',
    '18   inch',
    '20   inch',
    '22   inch',
    '24   inch',
    '26   inch',
    '28   inch',
  ];
  String selected = 'choose length';
///////////////////////////////////
///////////  color variation  ////
  List<String> color_variation = [
    'choose color',
    'black',
    'brown',
    'blond',
    'light',
    'dark',
    'green'
  ];
  String color = 'choose color';
////////////////////////////////////
////////  density  ////////////
  List<String> density_var = [
    'choose density',
    '130  %',
    '150  %',
    '180  %',
    '200  %',
    '250  %'
  ];
  String density = 'choose density';
////////////////////////////////
////////////   cap size  ///////////
  List<String> cap_size_var = [
    'choose cap size',
    'small',
    'large',
    'medium',
  ];
  String cap_size = 'choose cap size';
/////////////////////////////////////
/////////  cap type  ////////////
  List<String> cap_type_var = [
    'choose cap type',
    'full lace',
    'front lace',
  ];
  String cap_type = 'choose cap type';
////////////////////////////////
/////////  order types  /////////
  List<String> order_types = ['choose order type', 'wigs', 'toupee', 'woman'];
  String types_order = 'choose order types';

  @override
  Widget build(BuildContext context) {
    return //////////////  cap type  ///////////////

      Scaffold(
        backgroundColor: Colors.cyan[100],
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [Text("add order")],
                    ),
                    onPressed: () {},
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
              SizedBox(
                height: 20,
              ),

              ////////   length //////////
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropdownButton<String>(
                    value: selected,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        selected = newValue!;
                      });
                    },
                    items: length_variation
                        .map<DropdownMenuItem<String>>((String value1) {
                      return DropdownMenuItem<String>(
                        value: value1,
                        child: Text(value1),
                      );
                    }).toList(),
                  ),
                ],
              ),

              //////////////////////////
              SizedBox(
                height: 20,
              ),
              ///////////////   color  //////////////

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    items: color_variation
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
              SizedBox(
                height: 20,
              ),
              //////////////////  density  /////////////////

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropdownButton<String>(
                    value: density,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        density = newValue!;
                      });
                    },
                    items: density_var
                        .map<DropdownMenuItem<String>>((String densityval) {
                      return DropdownMenuItem<String>(
                        value: densityval,
                        child: Text(densityval),
                      );
                    }).toList(),
                  ),
                ],
              ),

              //////////////////////////////
              SizedBox(
                height: 20,
              ),
              /////////////////  cap size  ///////////////

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropdownButton<String>(
                    value: cap_size,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        cap_size = newValue!;
                      });
                    },
                    items: cap_size_var
                        .map<DropdownMenuItem<String>>((String capsizeval) {
                      return DropdownMenuItem<String>(
                        value: capsizeval,
                        child: Text(capsizeval),
                      );
                    }).toList(),
                  ),
                ],
              ),

              ////////////////////////////////////////////////
              //////////////  cap type  ///////////////
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropdownButton<String>(
                    value: cap_type,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        cap_type = newValue!;
                      });
                    },
                    items: cap_type_var
                        .map<DropdownMenuItem<String>>((String captypeval) {
                      return DropdownMenuItem<String>(
                        value: captypeval,
                        child: Text(captypeval),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //////////////  upload image  //////////////
                  RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.camera_alt_outlined),
                        Text("upload image")
                      ],
                    ),
                    onPressed: () {},
                  ),

                  SizedBox(width: 50), // give it width
                  ///////////////////////////////
                  // 11111111111111111111Spacer(),
                  ///////////  pick camera  ////////////
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.camera_alt_outlined),
                        Text("pick picture")
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ]),
          ),
        ),
      );
  }
}
