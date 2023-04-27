import 'package:flutter/material.dart';

class Meilleuresventes extends StatefulWidget {
  @override
  _MeilleuresventesState createState() => _MeilleuresventesState();
}

class _MeilleuresventesState extends State<Meilleuresventes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  String name;
  String imageUrl;

  String price;

  PopularFoodTiles({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'melounge');
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: []),
            child: Card(
              color: Color.fromRGBO(255, 255, 255, 1),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Container(
                  width: 170,
                  height: 210,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              'assets/' + imageUrl + ".jpg",
                              width: 130,
                              height: 140,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                        child: Text(price,
                            style: TextStyle(
                                color: Color(0xFF6e6e71),
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularFoodTiles(
          name: "Melounges poulets",
          imageUrl: "epoulet",
          price: '15.06',
        ),
        PopularFoodTiles(
          name: "laurier",
          imageUrl: "rand",
          price: "11.00",
        ),
        PopularFoodTiles(
          name: "Harrisa",
          imageUrl: "H",
          price: "11.10",
        ),
        PopularFoodTiles(
          name: "curcum",
          imageUrl: "korkem",
          price: "12.00",
        ),
      ],
    );
  }
}
