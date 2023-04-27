import 'dart:io';

import 'package:flutter/material.dart';
import 'package:Hbibty_bio/main.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _profile createState() => _profile();
}

// ignore: camel_case_types, duplicate_ignore, duplicate_ignore, duplicate_ignore, duplicate_ignore
class _profile extends State<profile> {
  // ignore: prefer_typing_uninitialized_variables, unused_field
  var mobileNumber = '';

  _profile();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color c = const Color(0xFFf2f2f2);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: c,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
              width: double.maxFinite,
              child: Wrap(
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(),
                      ],
                    ),
                    Card(
                      margin:
                          const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                      child: Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 20.0,
                              bottom: 10,
                            ),
                            child: Text(
                              'wiem oumaima',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                          ),
                          const Divider(
                            indent: 10,
                            endIndent: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              'wiemoumaima@mail.com',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, bottom: 20),
                            child: Text(
                              mobileNumber,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                    GridView.count(
                        padding: const EdgeInsets.only(top: 10),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        children: [
                          Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            margin: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () => ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("No orders yet"),
                              )),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.library_books,
                                      color: Colors.blueGrey,
                                      size: 48,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Text(
                                        'Orders',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            margin: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () => ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("No access"),
                              )),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.account_box_sharp,
                                      color: Colors.blueGrey,
                                      size: 48,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Text(
                                        'Account',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            margin: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () => ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("No notifications to show"),
                              )),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.notifications,
                                      size: 48,
                                      color: Colors.blueGrey,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Text(
                                        'Notifications',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            margin: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'scanner');
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.qr_code_scanner,
                                      size: 48,
                                      color: Colors.blueGrey,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                      child: Text(
                                        'scanner',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ],
                )),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text(
                    'Déconnexion',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
