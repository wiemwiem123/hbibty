import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:Hbibty_bio/main.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class product extends StatefulWidget {
  const product({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _product createState() => _product();
}

// ignore: camel_case_types, duplicate_ignore, duplicate_ignore, duplicate_ignore, duplicate_ignore
class _product extends State<product> {
  List posts = [];
  Future getpost() async {
    var url = "http://localhost:3000/products";
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    setState(() {
      posts.addAll(responsebody);
    });

    // print(posts);
  }

  @override
  void initState() {
    getpost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(31, 51, 30, 1),
        title: const Text(
          'Hommage Aux Femmes Rurales',
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
        ),
        actions: const [
          IconButton(
              icon: Icon(
                Icons.verified,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null),
        ],
      ),
      body: posts == null || posts.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Text(
                      'list of product',
                      style: TextStyle(
                          fontSize: 30, fontFamily: 'Poppins-1/Poppins-black'),
                    ),
                    Container(
                      color: Color.fromARGB(255, 254, 254, 254),
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: ListTile(
                        title: Text("${posts[i]['nom_pro']}"),
                        subtitle: Text("${posts[i]['prix']}"),
                        trailing: Text("${posts[i]['image']}"),
                      ),
                    ),
                    Row(children: [
                      TextButton(
                        child:
                            Text('View', style: TextStyle(color: Colors.black)),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Text('Modifier',
                            style: TextStyle(color: Colors.black)),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      TextButton(
                        child: Text("Delete",
                            style: TextStyle(color: Colors.redAccent)),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                    title: Center(
                                      child: Column(
                                        children: [
                                          Icon(Icons.warning_outlined,
                                              size: 36, color: Colors.red),
                                          SizedBox(height: 20),
                                          Text("Confirm Deletion"),
                                        ],
                                      ),
                                    ),
                                    content: Container(
                                      height: 70,
                                      child: Column(
                                        children: [
                                          Text(
                                              "Are you sure want to delete ''?"),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton.icon(
                                                  icon: Icon(
                                                    Icons.close,
                                                    size: 14,
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.grey),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  label: Text("Cancel")),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              ElevatedButton.icon(
                                                  icon: Icon(
                                                    Icons.delete,
                                                    size: 14,
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.red),
                                                  onPressed: () {
                                                    Navigator.pushNamed(
                                                        context, 'delete');
                                                  },
                                                  label: Text("Delete"))
                                            ],
                                          )
                                        ],
                                      ),
                                    ));
                              });
                        },
                      )
                    ]),
                    //
                  ],
                );
              }),
    );
  }
}
