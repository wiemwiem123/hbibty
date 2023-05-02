import 'package:Hbibty_bio/routes/Dashboard/users/users.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(239, 210, 125, 1),
        title: const Text(
          ' Dashboard Admin',
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
      body: users(),
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
              title: const Text("Users"),
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Product"),
              onTap: () {
                Navigator.pushNamed(context, 'product');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Compagne"),
              onTap: () {
                Navigator.pushNamed(context, 'compagne');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Stock"),
              onTap: () {
                Navigator.pushNamed(context, 'Infusions');
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Commande"),
              onTap: () {
                Navigator.pushNamed(context, 'Snacks');
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
