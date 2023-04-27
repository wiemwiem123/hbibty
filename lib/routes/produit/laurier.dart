import 'dart:html';

import 'package:Hbibty_bio/routes/navigationbar/Meilleures%20ventes.dart';
import 'package:Hbibty_bio/routes/inscription/page1.dart';
import 'package:flutter/material.dart';

class laurier extends StatefulWidget {
  @override
  State<laurier> createState() => _laurierState();
}

class _laurierState extends State<laurier> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounterr() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFAFAFA),
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF3a3737),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: <Widget>[
              Positioned(
                right: 9,
                top: 3,
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFF3a3737),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'laurier1');
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      Positioned(
                        right: 9,
                        top: 3,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: Text(
                            '$_counter',
                            style: TextStyle(
                              color: Color.fromARGB(255, 208, 21, 21),
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/rand' + ".jpg",
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  elevation: 1,
                  margin: EdgeInsets.all(5),
                ),
                FoodTitleWidget(
                    productName: "laurier",
                    productPrice: "\$96.00",
                    productHost: "Hbibty"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Color(0xFF3a3737),
                      ),
                      onPressed: _incrementCounterr,
                      tooltip: 'Increment',
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'laurier1');
                      },
                      child: Container(
                        width: 200.0,
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: const Color.fromRGBO(239, 210, 125, 1),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            'Ajouter au panier',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Color(0xFF3a3737),
                      ),
                      onPressed: _incrementCounter,
                      tooltip: 'Increment',
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                  child: TabBar(
                    labelColor: const Color.fromRGBO(239, 210, 125, 1),
                    indicatorColor: const Color.fromRGBO(239, 210, 125, 1),
                    unselectedLabelColor: Color(0xFFa4a1a1),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: [
                      Tab(
                        text: 'Déscription',
                      ),
                    ], // list of tabs
                  ),
                ),
                Container(
                  height: 150,
                  child: TabBarView(
                    children: [
                      Container(
                        color: Colors.white24,
                        child: DetailContentMenu(),
                      ),
                      Container(
                        color: Colors.white24,
                        child: DetailContentMenu(),
                      ), // class name
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class FoodTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;
  String productHost;

  FoodTitleWidget({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productHost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              productPrice,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Text(
              "by ",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w400),
            ),
            Text(
              productHost,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1f1f1f),
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}

class DetailContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Lod iattribury w\'s De Finibus a type specimen book.',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            height: 1.50),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
