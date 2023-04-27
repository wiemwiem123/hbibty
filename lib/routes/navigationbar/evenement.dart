import 'package:Hbibty_bio/routes/navigationbar/Meilleures%20ventes.dart';
import 'package:flutter/material.dart';
import 'package:Hbibty_bio/main.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class event extends StatelessWidget {
  const event({super.key});

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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 500,
                      height: 200,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'Infusions');
                        },
                        child: Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  height: 200,
                                  width: 350,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(11),
                                      ),
                                      image: const DecorationImage(
                                          image: AssetImage('assets/o.jpg'),
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
    );
  }
}
