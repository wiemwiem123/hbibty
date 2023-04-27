import 'package:Hbibty_bio/routes/admin.dart';
import 'package:Hbibty_bio/routes/navigationbar/Meilleures%20ventes.dart';
import 'package:Hbibty_bio/routes/produit/laurier.dart';
import 'package:Hbibty_bio/routes/produit/laurier1.dart';
import 'package:Hbibty_bio/routes/produit/melounge.dart';
import 'package:Hbibty_bio/routes/produit/melounge1.dart';
import 'package:Hbibty_bio/routes/scaner.dart';
import 'package:flutter/material.dart';
import 'package:Hbibty_bio/routes/drawer/Infusions.dart';
import 'package:Hbibty_bio/routes/drawer/chat.dart';
import 'package:Hbibty_bio/routes/drawer/snacks.dart';
import 'package:Hbibty_bio/routes/drawer/artisanat.dart';
import 'package:Hbibty_bio/routes/drawer/epices.dart';
import 'package:Hbibty_bio/routes/drawer/oula.dart';
import 'package:Hbibty_bio/routes/navigationbar/produit.dart';
import 'package:Hbibty_bio/routes/inscription/page1.dart';
import 'package:Hbibty_bio/routes/inscription/signIn.dart';
import 'package:Hbibty_bio/routes/inscription/signUp.dart';
import 'package:Hbibty_bio/routes/inscription/Otp.dart';
import 'package:Hbibty_bio/routes/navigationbar/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: chatbot(),
      // debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const Page1(),
      //   'page2': (context) => signIn(),
      //   'page3': (context) => const signUp(),
      //   'page4': (context) => const Page4(),
      //   'Home': (context) => const bienvenupage(
      //         title: '',
      //       ),
      //   'Produit': (context) => const produit(),
      //   'Epices': (context) => const Epices(),
      //   'Oula': (context) => const Oula(),
      //   'Infusions': (context) => const Infusions(),
      //   'Snacks': (context) => const Snacks(),
      //   'Artisanat': (context) => const Artisanat(),
      //   'chatbot': (context) => const chatbot(),
      //   'melounge': (context) => melounge(),
      //   'Meilleuresventes': (context) => Meilleuresventes(),
      //   'melounge1': (context) => melounge1(),
      //   'laurier': (context) => laurier(),
      //   'laurier1': (context) => laurier1(),
      //   'scanner': (context) => const scanner(),
      //   'admin': (context) => admin(),
      // },
    );
  }
}
