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
class deleteproduct extends StatefulWidget {
  const deleteproduct({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _deleteproduct createState() => _deleteproduct();
}

// ignore: camel_case_types, duplicate_ignore, duplicate_ignore, duplicate_ignore, duplicate_ignore
class _deleteproduct extends State<deleteproduct> {
  List posts = [];
  Future deletepost() async {
    var url = "http://localhost:3000/product/:id";
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    setState(() {
      posts.addAll(responsebody);
    });

    // print(posts);
  }

  @override
  void initState() {
    deletepost();
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
                  return Column(children: [
                    Text('dfghj'),
                    Container(
                      color: Color.fromARGB(255, 254, 254, 254),
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: ListTile(
                        title: Text("${posts[i]['nom_pro']}"),
                        subtitle: Text("${posts[i]['prix']}"),
                        trailing: Text("${posts[i]['image']}"),
                      ),
                    ),
                  ]);
                }));
  }
}                 //
                  

