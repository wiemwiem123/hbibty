import 'package:Hbibty_bio/routes/navigationbar/Meilleures%20ventes.dart';
import 'package:flutter/material.dart';
import 'package:Hbibty_bio/main.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class homee extends StatelessWidget {
  const homee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(31, 51, 30, 1),
        leading: const Icon(Icons.verified),
        title: const Text(
          'Hommage Aux Femmes Rurales',
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                          image: AssetImage("assets/1.jpg"), fit: BoxFit.cover),
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
                          image: AssetImage("assets/4.jpg"), fit: BoxFit.cover),
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
                          image: AssetImage("assets/3.jpg"), fit: BoxFit.cover),
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
                          image: AssetImage("assets/fe.jpg"),
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
                          image: AssetImage("assets/femme.jpg"),
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
                'Nouveautés',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'melounge');
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 20, right: 17),
                          width: 75.0,
                          height: 75.0,
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage("assets/epoulet.jpg")))),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'melounge');
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 20, right: 17),
                          width: 75.0,
                          height: 75.0,
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage("assets/malya.jpg")))),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'melounge');
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 20, right: 17),
                          width: 75.0,
                          height: 75.0,
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage("assets/hout.jpg")))),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'melounge');
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 20, right: 17),
                          width: 75.0,
                          height: 75.0,
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage("assets/ph.jpg")))),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'melounge');
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 20, right: 17),
                          width: 75.0,
                          height: 75.0,
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage("assets/H.jpg")))),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'melounge');
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 20, right: 17),
                          width: 75.0,
                          height: 75.0,
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage("assets/z.jpg")))),
                    )
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 20.0, top: 5.0, right: 200.0, bottom: 5.0),
              child: Text(
                'Meilleures ventes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Meilleuresventes(),
            const Padding(
              padding: EdgeInsets.only(
                  left: 20.0, top: 5.0, right: 320.0, bottom: 5.0),
              child: Text(
                'Shop',
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
                          child: Container(
                            width: 500,
                            height: 100,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'Epices');
                              },
                              child: Column(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("E.poulet(100gr)"),
                                    const Text("4.500 Dt"),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(11),
                                            ),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/epoulet.jpg'),
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
                          child: Container(
                            width: 500,
                            height: 100,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'Oula');
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
                                            image: const DecorationImage(
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
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 500,
                            height: 100,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'Infusions');
                              },
                              child: Column(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Tisane : Constipations"),
                                    const Text("7.000 DT"),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(11),
                                            ),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/tc2.jpg'),
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
                          child: Container(
                            width: 500,
                            height: 100,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'Snacks');
                              },
                              child: Column(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("cuir de fruit : Pommes"),
                                    const Text("7.000 DT"),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(11),
                                            ),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/pomme.jpg'),
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
                          child: Container(
                            width: 500,
                            height: 100,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'Artisanat');
                              },
                              child: Column(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("fghgfd"),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(11),
                                            ),
                                            image: const DecorationImage(
                                                image:
                                                    AssetImage('assets/pp.jpg'),
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
          ],
        ),
      ),
    );
  }
}
