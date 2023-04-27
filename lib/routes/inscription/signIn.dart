import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController Email = TextEditingController();
  TextEditingController password = TextEditingController();
  String _errorMessage = '';
  String _errorMessagepassword = '';

  String? _emailErrorText;
  String? _passwordErrorText;

  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Scaffold(
      body: Container(
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
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.close),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            Flexible(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 230,
                    height: 200,
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Container(
                        child: Image.asset(
                          "assets/ph.jpg",
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, 'admin');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 55,
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
                          fontSize: defaultFontSize),
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
                      style: const TextStyle(
                          color: Color.fromARGB(255, 23, 22, 22)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                      labelText: "Password",
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
                      style: const TextStyle(
                          color: Color.fromARGB(255, 23, 22, 22)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(color: Color.fromRGBO(31, 51, 30, 1)),
                        BoxShadow(
                          color: Color.fromRGBO(31, 51, 30, 1),
                        ),
                      ],
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromRGBO(31, 51, 30, 1),
                            Color.fromRGBO(31, 51, 30, 1)
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 42.0),
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          login();
                          // Navigator.pushNamed(context, 'Home');
                        }),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  FacebookGoogleLogin()
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
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {Navigator.pushNamed(context, 'page3')},
                      child: Container(
                        child: Text(
                          "Sign Up",
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
      ),
    );
  }

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
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Adresse Email non valide";
      });
      return false;
    } else {
      setState(() {
        //sinon , pas d’erreur

        _errorMessage = "";
      });
      return true;
    }
  }

  void login() async {
    if (!validateEmail(Email.text) && !validatepassword(password.text)) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Email et password ne peuvent pas être vide")));
    } else {
      String url = "http://127.0.0.1:5000/crud/api/login";

      var data = {
        "Email": Email.text,
        "password": password.text,
      };

      print(data);
      try {
        final response = await http.post(Uri.parse(url),
            body: jsonEncode(data),
            headers: {"Content-Type": "application/json"});
        if (response.statusCode == 200) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Login successful")));
          Navigator.pushNamed(context, 'Home');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(" Email et password  invalid")));
        }
      } catch (e) {
        print(e);
      }
    }
  }
}

class FacebookGoogleLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.black12,
                          Colors.black54,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "Or",
                    style: TextStyle(
                        color: Color(0xFF2c2b2b),
                        fontSize: 16.0,
                        fontFamily: "WorkSansMedium"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.black54,
                          Colors.black12,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 40.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(42, 60, 221, 1),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(19, 80, 27, 1),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.google,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
