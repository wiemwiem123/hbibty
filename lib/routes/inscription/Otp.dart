// ignore_for_file: unused_import, unused_field, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:Hbibty_bio/main.dart';
import 'package:Hbibty_bio/routes/inscription/page1.dart';
import 'package:Hbibty_bio/routes/inscription/signIn.dart';
import 'package:Hbibty_bio/routes/inscription/signUp.dart';

void main() {
  runApp(const MyApp());
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyCustomForm(),
    );
    // ignore: empty_statements
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
//ou== MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String _errorMessage = '';
  String defaultFontFamily = 'Roboto-Light.ttf';
  double defaultFontSize = 14;
  double defaultIconSize = 17;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.close),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'page3');
                },
              ),
            ),
            Flexible(
              flex: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.code,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                      ),
                      hintText: "Invitation Code",
                    ),
                    onChanged: (val) {
                      {
                        validatecode(val);
                      }
                    },
                  ),
                  Container(
                    child: Text(
                      _errorMessage,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 23, 22, 22)),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 50, top: 10),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(31, 51, 30, 1))),
                        child: const Text('Next '),
                        onPressed: () {
                          Navigator.pushNamed(context,
                              'page2'); //en cliquant sur le bouton, oaccède à Page2
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validatecode(String val) {
    if (val.isEmpty) {
      //si le champs est vide
      setState(() {
        _errorMessage = "Le code ne peut pas être vide";
      });
    } else if (val.replaceAll(RegExp(r'\D+'), '').length < 4) {
      setState(() {
        _errorMessage = "Le codee doit comporter au moins 4 chiffres";
      });
    } else {
      //sinon , pas d’erreur
      setState(() {
        _errorMessage = "vrai";
      });
    }
  }
}
