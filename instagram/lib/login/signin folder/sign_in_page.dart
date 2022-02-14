import 'package:flutter/material.dart';

import 'package:instagram/login/signin%20folder/loginpage.dart';
import 'package:instagram/main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginpage.dart';

class signinPage extends StatefulWidget {
  const signinPage({Key? key}) : super(key: key);

  @override
  State<signinPage> createState() => _signinPageState();
}

class _signinPageState extends State<signinPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final _mykey = GlobalKey<FormState>();

  movetoHome_fromsigninpage(BuildContext context) {
    if (_mykey.currentState!.validate()) {
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      });
      setState(() {
        _emailController.clear();
        _passwordController.clear();
        _fullnameController.clear();
        _usernameController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            width: double.infinity,
            child: Form(
              key: _mykey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text("Instagram",
                      style: TextStyle(
                          fontSize: 60,
                          fontFamily: GoogleFonts.cookie().fontFamily)),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: _emailController,
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 20),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        hintText: "Enter your Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Email is empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _fullnameController,
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 20),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        hintText: "Enter your Full Name"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Full Name is empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 20),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        hintText: "Enter your username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Username is empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 20),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blueGrey.shade200)),
                        hintText: "Enter your password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " Password is empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(30, 20)),
                            onPressed: () {
                              setState(() {
                                movetoHome_fromsigninpage(context);
                              });
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("By signing up, you agree to our Terms , Data"),
                  const Text("Policy and Cookies Policy ."),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey.shade200),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Have an account?"),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const logInPage()));
                            });
                          },
                          child: const Text(
                            "Log in",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
