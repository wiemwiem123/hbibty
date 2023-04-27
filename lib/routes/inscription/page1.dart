import 'dart:async';

import 'package:Hbibty_bio/routes/inscription/signIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page(),
    );
  }
}

class page extends StatefulWidget {
  @override
  _pagestate createState() => _pagestate();
}

class _pagestate extends State<page> {
  void navigationPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
          ),
          child: signIn(),
        ),
      ),
    );
  }

  startTime() async {
    var _duration = Duration(milliseconds: 2000);
    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(239, 210, 125, 1),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.white],
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(920),
                  bottomRight: Radius.circular(920))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5.0,
              ),
              Container(
                decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/photo2.png")),
                ),
                margin: const EdgeInsets.all(20.0),
                width: 300,
                height: 300,
              )
              // const Text(
              //   'Hbibty_bio',
              //   style: TextStyle(
              //     fontSize: 60,
              //     fontFamily: 'Poppins-1',
              //     color: const Color.fromRGBO(31, 51, 30, 1),
              //   ),
              // ),
              // const SizedBox(
              //   height: 390.0,
              // ),
              // ElevatedButton(
              //   style: const ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(
              //     const Color.fromRGBO(31, 51, 30, 1),
              //   )),
              //   child: const Text(
              //     'GET STARTED',
              //     style: TextStyle(fontSize: 20),
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'page2');
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
