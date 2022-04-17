import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wigzawy/screens/addorder.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);
  static const String route = '/listvew';
  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  List orders = [];
  String query = '';

  bool isloading = false;
  var quantity;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    try {
      setState(() {
        isloading = true;
      });
      var url = "http://bestbeast.naturalwigsbuy.com/api/order_api";
      var res = await http.get(Uri.parse(url));
// print(res.body);
      if (res.statusCode == 200) {
        var pagedata = jsonDecode(res.body);
// print(res.body[1]);
        setState(() {
          orders = pagedata;
          isloading = false;
        });
      } else {
        setState(() {
          orders = [];
          isloading = false;
        });
      }
    } catch (e) {
      print("canot:$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool _flag = true;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.cyan[100],
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: getbody(),
            ),
            ElevatedButton(
              onPressed: () {
                add_order();
              },
              child: Text(_flag ? 'new order' : 'Green'),
              style: ElevatedButton.styleFrom(
                primary:
                _flag ? Colors.cyan : Colors.teal, // This is what you need!
              ),
            ),
          ],
        ),
      ),
    );
  }

  /////////////////////
  add_order() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => addorder()),
    );
  }
////////////add/new/order

  getbody() {
    if (orders.contains(null) || orders.length < 0 || isloading) {
      return Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return getcard(orders[index]);
        });
  }

  //itis true//
  getcard(pagedata) {
    var id = pagedata['id'];
    var image = pagedata['image'];
    var refnum = pagedata['refnum'];
    var name = pagedata['name'];
    var category = pagedata['category'];
    var color = pagedata['color'];
    var capsize = pagedata['capsize'];
    var cusId = pagedata['cusId'];
    var density = pagedata['density'];
    var created_at = pagedata['createdAt'];
    var updatedAt = pagedata['updatedAt'];
    var length = pagedata['length'];
    var texture = pagedata['texture'];
    var captype = pagedata['captype'];
    return Card(
      child: ListTile(
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            //icon eye///
            IconButton(
                iconSize: 20,
                onPressed: () {


                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => item_details(
                          context,
                          image,
                          id,
                          refnum,
                          name,
                          texture,
                          category,
                          color,
                          capsize,
                          quantity,
                          cusId,
                          density,
                          created_at,
                          updatedAt,
                          length,
                          captype),
                    ),
                  );
                },
                icon: Icon(Icons.remove_red_eye_sharp)),
            // Spacer() ,
            //icon edit//
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              iconSize: 20,
            ),
            //Spacer(),h
            //icon delet//
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              iconSize: 20,
            ),
          ],
        ),
        title: SizedBox(
          width: 10,
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(60 / 2),
                  image: DecorationImage(
                      image: NetworkImage(image.toString()), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    refnum.toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name.toString(),
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //////////////
  ///
  item_details(
      context,
      image,
      id,
      refnum,
      name,
      texture,
      category,
      color,
      capsize,
      quantity,
      cusId,
      density,
      created_at,
      updatedAt,
      length,
      captype) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
        body: DefaultTabController(
            length: 3,
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      pinned: false,
                      expandedHeight: 250.0,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text('Refnum: $refnum',
                            style: TextStyle(
                              fontSize: 20, color: Colors.cyan,

                              //acy
                            ),

                            textScaleFactor: 1),

                        background:
                        InkWell(
                          onTap: () {
                            show_image(
                              context,
                              image,
                              id,
                              refnum,
                              name,
                              texture,
                              category,
                              color,
                              capsize,
                              quantity,
                              cusId,
                              density,
                              created_at,
                              updatedAt,
                              length,
                              captype,
                            );
                          },
                          child: Image.network(
                            "$image",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),

                  ];
                },
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'id: $id',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("name:   "),
                      ),
                      Text('$name', style: TextStyle(fontSize: 20)),
                      Divider(),

                      //  Padding(
                      //    padding: const EdgeInsets.all(8.0),
                      //    child: Text("refnum:   "),
                      //  ) ,Text('$refnum',style: TextStyle(fontSize: 20)),
                      //                                  Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("textutre:   "),
                      ),
                      Text('$texture', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("category:   "),
                      ),
                      Text('$category', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("capsize:   "),
                      ),
                      Text('$capsize', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("quantity:   "),
                      ),
                      Text('$quantity', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("color:   "),
                      ),
                      Text('$color', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("cusid:   "),
                        ),
                      ),
                      Text('$cusId', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("density:   "),
                      ),
                      Text('$density', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("createdAt:   "),
                      ),
                      Text('$created_at', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("updatedAt:   "),
                      ),
                      Text('$updatedAt', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("length:   "),
                      ),
                      Text('$length', style: TextStyle(fontSize: 20)),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("capacity:   "),
                      ),
                      Text('$captype', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ))));
  }

  show_image(
      context,
      image,
      id,
      refnum,
      name,
      texture,
      category,
      color,
      capsize,
      quantity,
      cusId,
      density,
      created_at,
      updatedAt,
      length,
      captype) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('$refnum', style: TextStyle(fontSize: 20)),
        content: Image.network(
          "$image",
          fit: BoxFit.fill,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
    child:
    const Text('Show Dialog');
  }
}
