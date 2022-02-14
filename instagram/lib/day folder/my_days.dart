import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/day%20folder/hero.dart';
import 'package:instagram/day%20folder/mydetails.dart';
import 'package:instagram/newsfeed%20folder/news_feed_page.dart';
import 'package:instagram/myprofile%20folder/profile_day.dart';

class mydays extends StatefulWidget {
  const mydays({Key? key}) : super(key: key);

  @override
  State<mydays> createState() => _mydaysState();
}

class _mydaysState extends State<mydays> {
  List<mydetails> mylist = [
    mydetails("picture/days/3.jfif", 3, "stars"),
    mydetails("picture/days/1.jfif", 1, "sunset"),
    mydetails("picture/days/2.jfif", 2, "Travel"),
    mydetails("picture/days/3.jfif", 4, "stars"),
    mydetails("picture/days/2.jfif", 5, "Travel"),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.heart, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.paperplane,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Instagram",
            style: TextStyle(
              fontFamily: GoogleFonts.cookie().fontFamily,
              fontSize: 42,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                padding: const EdgeInsets.all(8),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Stack(children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 43,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage("picture/days/luffy.jfif"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            right: -5,
                            bottom: 20,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(7, 7),
                                  shape: const CircleBorder(),
                                ),
                                onPressed: () {},
                                child: const Icon(Icons.add))),
                        const Positioned(
                            right: 25,
                            bottom: 5,
                            child: Text(
                              "Your Story",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ))
                      ]),
                      Row(
                        children: [
                          ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: mylist.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (_) {
                                        return myheroAnimation(mylist[index]);
                                      }));
                                    });
                                  },
                                  child: Hero(
                                    tag: Key(mylist[index].id.toString()),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Stack(children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.pink,
                                          radius: 45,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 43,
                                            child: CircleAvatar(
                                              radius: 40,
                                              backgroundImage:
                                                  AssetImage(mylist[index].img),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            right: 25,
                                            bottom: 5,
                                            child: Text(
                                              mylist[index].name,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ))
                                      ]),
                                    ),
                                  ),
                                );
                              }),
                        ],
                      ),
                    ]),
              ),
              newsfeedPage(),
            ],
          ),
        ),
      ),
    );
  }
}
