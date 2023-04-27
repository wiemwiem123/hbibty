// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:Hbibty_bio/main.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class Infusions extends StatelessWidget {
  const Infusions({super.key});

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
                        image: AssetImage("assets/tisanehbiba.jpg"),
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
                        image: AssetImage("assets/tisanehbibty.jpg"),
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
                        image: AssetImage("assets/tisanekess.jpg"),
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
                        image: AssetImage("assets/tisaneskes.png"),
                        fit: BoxFit.cover),
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
              'Nos Infusions',
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
                                  const Text("Tisane:Cocooning"),
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
                                              image: AssetImage('assets/t.png'),
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
                                  const Text("Tisane:Constipations"),
                                  const Text("7.000 DT"),
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
                                                  AssetImage('assets/tc2.jpg'),
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
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Tisane:Fight"),
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
                                              image:
                                                  AssetImage('assets/tf.png'),
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
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Tisane:Happy Gut"),
                                  const Text("7.000 DT"),
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
                                                  AssetImage('assets/th.png'),
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
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Tisane:Immunité Et Vitalité"),
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
                                              image:
                                                  AssetImage('assets/ti.jpg'),
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
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Tisane:Minceur"),
                                  const Text("9.000 DT"),
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
                                                  AssetImage('assets/tm.jpg'),
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
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Tisane Sommeil"),
                                  const Text("8.000 DT"),
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
                                                  AssetImage('assets/ts.jpg'),
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
                              Navigator.pushNamed(context, 'Produit');
                            },
                            child: Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Tisane:Serenity"),
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
                                              image:
                                                  AssetImage('assets/ts2.png'),
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
