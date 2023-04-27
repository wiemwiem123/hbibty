import 'dart:html';

import 'package:Hbibty_bio/routes/inscription/signUp.dart';
import 'package:Hbibty_bio/routes/navigationbar/evenement.dart';
import 'package:Hbibty_bio/routes/inscription/page1.dart';
import 'package:Hbibty_bio/routes/inscription/signIn.dart';
import 'package:flutter/material.dart';
import 'package:Hbibty_bio/main.dart';
import 'package:Hbibty_bio/routes/navigationbar/home.dart';
import 'package:Hbibty_bio/routes/navigationbar/produit.dart';
import 'package:Hbibty_bio/routes/navigationbar/profil.dart';
import 'package:Hbibty_bio/routes/navigationbar/search.dart';

void main() => runApp(const MyApp());

// ignore: camel_case_types
class bienvenupage extends StatelessWidget {
  final String title;
  const bienvenupage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(239, 210, 125, 1),
        title: const Text(
          '        Hbibty-bio',
          style: TextStyle(
              fontSize: 30, color: Color.fromARGB(255, 249, 242, 242)),
        ),
        actions: const [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null),
        ],
      ),
      body: const MyNavigationBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text(
                  "            Habibty_bio",
                  style: TextStyle(fontSize: 20),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 210, 125, 1),
                ),
                accountEmail: Text(
                  "contact@habibty-bio. com",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                currentAccountPicture:
                    Image(image: AssetImage('assets/1234.jpg'))),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, 'Home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Epices"),
              onTap: () {
                Navigator.pushNamed(context, 'Epices');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Oula"),
              onTap: () {
                Navigator.pushNamed(context, 'Oula');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Infusions"),
              onTap: () {
                Navigator.pushNamed(context, 'Infusions');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("snacks"),
              onTap: () {
                Navigator.pushNamed(context, 'Snacks');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Artisanat"),
              onTap: () {
                Navigator.pushNamed(context, 'Artisanat');
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text("Chat Bot"),
              onTap: () {
                Navigator.pushNamed(context, 'chatbot');
              },
            ),
            ListTile(
              leading: const Icon(Icons.output),
              title: const Text("Déconnexion"),
              onTap: () {
                Navigator.pushNamed(context, 'page2');
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(239, 210, 125, 1),
    );
  }
}

// class MyNavigationBar extends StatefulWidget {
//   const MyNavigationBar({Key? key}) : super(key: key);

//   @override
//   State<MyNavigationBar> createState() => _MyNavigationBarState();
// }

// class _MyNavigationBarState extends State<MyNavigationBar>
//     with SingleTickerProviderStateMixin {
//   String title = 'BottomNavigationBar';

//   late final TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 5, vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }

//   int _selectedPageIndex = 2;

//   void _selectPage() {
//     setState(() {
//       _selectedPageIndex = 2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: TabBarView(
//           children: <Widget>[
//             event(),
//             searche(),
//             homee(),
//             profile(),
//           ],
//           // If you want to disable swiping in tab the use below code
//           physics: NeverScrollableScrollPhysics(),
//           controller: _tabController,
//         ),
//         extendBody: true,
//         bottomNavigationBar: Container(
//           padding: EdgeInsets.all(16.0),
//           child: ClipRRect(
//             borderRadius: BorderRadius.all(
//               Radius.circular(50.0),
//             ),
//             child: Container(
//               color: const Color.fromRGBO(239, 210, 125, 1),
//               child: TabBar(
//                 labelColor: Color.fromARGB(255, 233, 235, 236),
//                 unselectedLabelColor: Colors.white,
//                 labelStyle: TextStyle(fontSize: 10.0),
//                 indicator: UnderlineTabIndicator(
//                   borderSide: BorderSide(color: Color.fromARGB(137, 0, 0, 0)),
//                 ),
//                 //For Indicator Show and Customization
//                 indicatorColor: Colors.black54,
//                 // ignore: prefer_const_literals_to_create_immutables
//                 tabs: <Widget>[
//                   Tab(
//                     icon: Icon(
//                       Icons.event,
//                       size: 24.0,
//                     ),
//                   ),
//                   Tab(
//                     icon: Icon(
//                       Icons.search,
//                       size: 24.0,
//                     ),
//                   ),
//                   Tab(
//                     icon: Icon(
//                       Icons.home,
//                       size: 24.0,
//                     ),
//                   ),
//                   Tab(
//                     icon: Icon(
//                       Icons.shopping_cart,
//                       size: 24.0,
//                     ),
//                   ),
//                   Tab(
//                     icon: Icon(
//                       Icons.person,
//                       size: 24.0,
//                     ),
//                   ),
//                 ],
//                 controller: _tabController,
//               ),
//             ),
//           ),
//         ));
//   }
// }

class MyNavigationBar extends StatefulWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const MyNavigationBar({Key, key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 2;

  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    const event(),
    Search(),
    const homee(),
    const produit(),
    const profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'événement',
              backgroundColor: Color.fromRGBO(239, 210, 125, 1),
            ),
            BottomNavigationBarItem(
              label: 'search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromRGBO(239, 210, 125, 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'shop',
              backgroundColor: Color.fromRGBO(239, 210, 125, 1),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 247, 247, 243),
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
