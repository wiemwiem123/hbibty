// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:Hbibty_bio/main.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class Artisanat extends StatelessWidget {
  const Artisanat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(31, 51, 30, 1),
        title: const Text(
          'Hommage Aux Femmes Rurales',
          style: TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
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
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/couscous.jpg"),
                        fit: BoxFit.cover),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  width: 370,
                  height: 250,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/coréte.jpg"),
                        fit: BoxFit.cover),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  width: 370,
                  height: 250,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/fe71.jpg"),
                        fit: BoxFit.cover),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  width: 370,
                  height: 250,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/444.jpg"), fit: BoxFit.cover),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  width: 370,
                  height: 250,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/555.jpg"), fit: BoxFit.cover),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  width: 370,
                  height: 250,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: 20.0, top: 5.0, right: 250.0, bottom: 5.0),
            child: Text(
              'Nos Artisanat',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          width: 500,
                          height: 100,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Couscous(500gr)"),
                                  const Text("2.500 DT"),
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11),
                                          ),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/couscous.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: 500,
                          height: 100,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("coréte(500gr)"),
                                  const Text("6.000 DT"),
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11),
                                          ),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/coréte.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: 500,
                          height: 100,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Mhamis(100gr)"),
                                  const Text("2.500 DT"),
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11),
                                          ),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('assets/thom.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
