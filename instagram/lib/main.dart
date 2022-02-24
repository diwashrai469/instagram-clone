import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/myfavouritefuntions.dart';
import 'package:instagram/login/signin%20folder/loginpage.dart';
import 'package:instagram/day%20folder/my_days.dart';
import 'package:instagram/login/signin%20folder/sign_in_page.dart';
import 'package:instagram/myprofile%20folder/myprofile.dart';
import 'package:provider/provider.dart';

import 'addpicture/addpicture.dart';
import 'mysearch folder/mysearch.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => myfavouritelist())],
    child: MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Homepage(),
        "/loginpage": (context) => logInPage(),
        "/signinpage": (context) => signinPage(),
      },
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int mynavindex = 0;
  List mywidget = [
    mydays(),
    mysearch(),
    addpicture(),
    const Center(child: Text("shop")),
    myProfile(),
  ];

  onitemtap(int index) {
    setState(() {
      mynavindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 0,
            iconSize: 35,
            elevation: 0,
            currentIndex: mynavindex,
            onTap: onitemtap,
            items: const [
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  icon: Icon(Icons.home_outlined, color: Colors.black),
                  label: ""),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                icon: Icon(Icons.search, color: Colors.black54),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.black,
                ),
                icon: Icon(CupertinoIcons.add_circled, color: Colors.black54),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shop_2_rounded,
                  color: Colors.black,
                ),
                icon: Icon(Icons.shop_2_rounded, color: Colors.black54),
                label: "",
              ),
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage("picture/days/luffy.jfif"),
                  ),
                ),
                icon: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("picture/days/luffy.jfif"),
                    ),
                  ),
                ),
                label: "",
              )
            ]),
        body: SafeArea(child: mywidget.elementAt(mynavindex)));
  }
}
