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
class produit extends StatefulWidget {
  const produit({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _produit createState() => _produit();
}

// ignore: camel_case_types, duplicate_ignore, duplicate_ignore, duplicate_ignore, duplicate_ignore
class _produit extends State<produit> {
  List posts = [];
  Future getpost() async {
    var url = "http://localhost:3000/products";
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    setState(() {
      posts.addAll(responsebody);
    });

    print(posts);
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
          leading: const Icon(Icons.verified),
          title: const Text(
            'Hommage Aux Femmes Rurales',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: posts == null || posts.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, i) {
                  return Container(
                    color: Color.fromARGB(255, 254, 254, 254),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: ListTile(
                        title: Text("${posts[i]['nom_pro']}"),
                        subtitle: Text("${posts[i]['prix']}"),
                        trailing: Text("${posts[i]['image']}")),
                  );
                }));
  }
}
// // ignore_for_file: file_names

// import 'package:flutter/material.dart';
// import 'package:Hbibty_bio/main.dart';

// void main() {
//   runApp(const MyApp());
// }

// // ignore: camel_case_types
// class produit extends StatelessWidget {
//   const produit({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(31, 51, 30, 1),
//         leading: const Icon(Icons.verified),
//         title: const Text(
//           'Hommage Aux Femmes Rurales',
//           style: TextStyle(
//               fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(18),
//                     ),
//                     image: DecorationImage(
//                         image: AssetImage("assets/hbibty.jpg"),
//                         fit: BoxFit.cover),
//                   ),
//                   margin: const EdgeInsets.all(10.0),
//                   width: 370,
//                   height: 250,
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(18),
//                     ),
//                     image: DecorationImage(
//                         image: AssetImage("assets/fe7.jpg"), fit: BoxFit.cover),
//                   ),
//                   margin: const EdgeInsets.all(10.0),
//                   width: 370,
//                   height: 250,
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(18),
//                     ),
//                     image: DecorationImage(
//                         image: AssetImage("assets/777.jpg"), fit: BoxFit.cover),
//                   ),
//                   margin: const EdgeInsets.all(10.0),
//                   width: 370,
//                   height: 250,
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(18),
//                     ),
//                     image: DecorationImage(
//                         image: AssetImage("assets/fe71.jpg"),
//                         fit: BoxFit.cover),
//                   ),
//                   margin: const EdgeInsets.all(10.0),
//                   width: 370,
//                   height: 250,
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(18),
//                     ),
//                     image: DecorationImage(
//                         image: AssetImage("assets/444.jpg"), fit: BoxFit.cover),
//                   ),
//                   margin: const EdgeInsets.all(10.0),
//                   width: 370,
//                   height: 250,
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(18),
//                     ),
//                     image: DecorationImage(
//                         image: AssetImage("assets/555.jpg"), fit: BoxFit.cover),
//                   ),
//                   margin: const EdgeInsets.all(10.0),
//                   width: 370,
//                   height: 250,
//                 ),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(
//                 left: 20.0, top: 5.0, right: 250.0, bottom: 5.0),
//             child: Text(
//               'Nos Produit',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Poivre(100gr)"),
//                                   const Text("5.500 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/poivre.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("carvi(100gr)"),
//                                   const Text("3.200 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/karwiya.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("coriandre(100gr)"),
//                                   const Text("3.500 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/tabel.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Ail séché(100gr)"),
//                                   const Text("6.000 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image:
//                                                   AssetImage('assets/thom.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("fghgfd"),
//                                   const Text("fghgfd"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/zanjbil.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Paprika(100gr)"),
//                                   const Text("4.200 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/felfel.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Grain de chia (100gr)"),
//                                   const Text("8.000 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/grain.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("curcuma(100gr)"),
//                                   const Text("5.200 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/korkem.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("caroub en poudre(100gr)"),
//                                   const Text("6.500 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/kharoub.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Hibiscus(50gr)"),
//                                   const Text("3.500 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/hibiscus.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("cannela moulu(100gr)"),
//                                   const Text("6.800 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/cannela.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("E.pates(100gr)"),
//                                   const Text("4.500 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/epate.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("E.poulet(100gr)"),
//                                   const Text("4.500 Dt"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/epoulet.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("oignon séché(100gr)"),
//                                   const Text("6.500 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/oignon.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("E.poisson(100gr)"),
//                                   const Text("4.800 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image:
//                                                   AssetImage('assets/poi.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("fghgfd"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/poivreg.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Laurier(100gr)"),
//                                   const Text("3.800 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image:
//                                                   AssetImage('assets/rand.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Ras Hanout(100gr)"),
//                                   const Text("3.300 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/rashanot.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("Sucre de datte bio(250gr)"),
//                                   const Text("6.000 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/sucre.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Card(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: SizedBox(
//                           width: 500,
//                           height: 100,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushNamed(context, 'Epices');
//                             },
//                             child: Column(children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text("cumin(100gr)"),
//                                   const Text("5.200 DT"),
//                                   Center(
//                                     child: Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                             Radius.circular(11),
//                                           ),
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   'assets/cumin.jpg'),
//                                               fit: BoxFit.cover)),
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
