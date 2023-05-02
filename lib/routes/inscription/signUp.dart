import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class signUp extends StatelessWidget {
  const signUp({super.key});

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
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController FirstName = TextEditingController();
  TextEditingController LastName = TextEditingController();

  String _errorMessage = '';
  String _errorMessagenom = '';

  String _errorMessagepassword = '';
  String defaultFontFamily = 'Roboto-Light.ttf';
  double defaultFontSize = 14;
  double defaultIconSize = 17;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white70,
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: InkWell(
              child: Container(
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.close),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'page2');
              },
            ),
          ),
          Flexible(
            flex: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: TextField(
                        showCursor: true,
                        controller: FirstName,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                          ),
                          labelText: "FirstName",
                        ),
                        onChanged: (val) {
                          {
                            validatenom(val);
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Flexible(
                      flex: 1,
                      child: TextField(
                        showCursor: true,
                        controller: LastName,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                          ),
                          labelText: "LastName",
                        ),
                        onChanged: (val) {
                          {
                            validatenom(val);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                TextField(
                  showCursor: true,
                  controller: Email,
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
                      Icons.email,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    fillColor: Color(0xFFF2F3F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                    ),
                    labelText: "Email",
                  ),
                  onChanged: (val) {
                    {
                      validateEmail(val);
                    }
                  },
                ),
                Container(
                  child: Text(
                    _errorMessage,
                    style:
                        const TextStyle(color: Color.fromARGB(255, 23, 22, 22)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                //1
                TextField(
                  showCursor: true,
                  controller: password,
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
                      Icons.lock_outline,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    fillColor: Color(0xFFF2F3F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                    ),
                    labelText: "password",
                  ),
                  onChanged: (val) {
                    {
                      validatepassword(val);
                    }
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                Container(
                  child: Text(
                    _errorMessagepassword,
                    style:
                        const TextStyle(color: Color.fromARGB(255, 23, 22, 22)),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Container(
                  width: double.infinity,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color.fromRGBO(31, 51, 30, 1),
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(31, 51, 30, 1),
                      ),
                    ],
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromRGBO(31, 51, 30, 1),
                          Color.fromRGBO(31, 51, 30, 1),
                        ],
                        begin: const FractionalOffset(0.2, 0.2),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Color.fromRGBO(31, 51, 30, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {
                      Register();
                    },
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                // FacebookGoogleLogin()
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'page2');
                    },
                    child: Container(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color.fromRGBO(31, 51, 30, 1),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  bool validatenom(String val) {
    if (val.isEmpty) {
      //si le champs est vide
      setState(() {
        _errorMessagenom = "Le nom ne peut pas être vide";
      });
      return false;
    } else if (val.length < 15) {
      setState(() {
        _errorMessagenom = "Le nom doit comporter au moins 15 caractères";
      });
      return false;
    } else {
      //sinon , pas d’erreur
      setState(() {
        _errorMessagenom = "";
      });
      return true;
    }
  }

  // bool validatephone(String val) {
  //   if (val.isEmpty) {
  //     //si le champs est vide
  //     setState(() {
  //       _errorMessagephone = "Le phone ne peut pas être vide";
  //     });
  //     return false;
  //   } else if (val.replaceAll(RegExp(r'\D+'), '').length < 12) {
  //     setState(() {
  //       _errorMessagephone = "Le phone doit comporter au moins 12 chiffres";
  //     });
  //     return false;
  //   } else {
  //     //sinon , pas d’erreur
  //     setState(() {
  //       _errorMessagephone = "vrai";
  //     });
  //     return true;
  //   }
  // }

  bool validatepassword(String val) {
    if (val.isEmpty) {
      //si le champs est vide
      setState(() {
        _errorMessagepassword = "Le mot de passe ne peut pas être vide";
      });
      return false;
    } else if (val.length < 8) {
      setState(() {
        _errorMessagepassword =
            "Le mot de passe doit comporter au moins 8 caractères";
      });
      return false;
    } else {
      //sinon , pas d’erreur
      setState(() {
        _errorMessagepassword = "";
      });
      return true;
    }
  }

  bool validateEmail(String val) {
    if (val.isEmpty) {
      //si le champs est vide
      setState(() {
        _errorMessage = "L'adresse email ne peut pas être vide";
      });
      return false;
    } //else if (!EmailValidator.validate(val, true)) {
    // setState(() {
    //  _errorMessage = "Adresse Email non valide";
    // }
    // );
    //}
    else {
      setState(() {
        //sinon , pas d’erreur
        _errorMessage = "";
      });
      return true;
    }
  }

  void Register() async {
    if (!validateEmail(Email.text) &&
        !validatepassword(password.text) &&
        !validatenom(FirstName.text) &&
        !validatenom(LastName.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("les champs ne peuvent pas être vide")));
    } else {
      String url = "http://localhost:3000/register";
      print("object");

      var data = {
        "nom": FirstName.text,
        "prénom": LastName.text,
        "email": Email.text,
        "password": password.text,
        "role": "client",
        "adresse": "null"
      };
      var bodyy = json.encode(data);
      print(bodyy);
      var urlParse = Uri.parse(url);
      print(urlParse);
      try {
        Response response = await http.post(urlParse,
            body: bodyy, headers: {"Content-Type": "application/json"});
        print(response.body);
      } catch (e) {
        print(e);
      }
      print('test');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login successful")));
      Navigator.pushNamed(context, 'page2');
    }
  }
}
