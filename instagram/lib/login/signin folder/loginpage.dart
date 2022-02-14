// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/main.dart';
import 'package:instagram/login/signin%20folder/sign_in_page.dart';

class logInPage extends StatefulWidget {
  const logInPage({Key? key}) : super(key: key);

  @override
  State<logInPage> createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  //to clear password field when log out
  final TextEditingController _textController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      });
      setState(() {
        _textController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Instagram",
                style: TextStyle(
                    fontSize: 70, fontFamily: GoogleFonts.cookie().fontFamily),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
              child: TextFormField(
                cursorColor: Colors.black,
                cursorHeight: 20,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    fillColor: Colors.black,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey.shade200)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey.shade200)),
                    hintText: "Phone number, username, or email"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Phone number, username, or email is empty";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: TextFormField(
                controller: _textController,
                cursorColor: Colors.black,
                cursorHeight: 20,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                  fillColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade200)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade200)),
                  hintText: "Password",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password is empty";
                  }
                  return null;
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 3, 50, 15),
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(fixedSize: Size(30, 20)),
                        onPressed: () {
                          setState(() {
                            movetoHome(context);
                          });
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 50.0, right: 20.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                )),
                Text("OR"),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 50.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 20,
                    height: 20,
                    child: Image.asset("picture/login/facebook.png"),
                  ),
                ),
                Text(
                  "Log in with Facebook",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade500),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Forget password?"),
            ),
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey.shade200),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Text("Don't have an account?"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signinPage()));
                      });
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
