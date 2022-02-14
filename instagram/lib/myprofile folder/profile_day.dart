import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/hero.dart';
import 'package:instagram/day%20folder/mydetails.dart';

class profileDay extends StatefulWidget {
  @override
  State<profileDay> createState() => _profileDayState();
}

class _profileDayState extends State<profileDay> {
  List<profiledaydetails> profiledaylist = [
    profiledaydetails(img: "picture/days/3.jfif", name: "stars"),
    profiledaydetails(img: "picture/days/1.jfif", name: "sunset"),
    profiledaydetails(img: "picture/days/2.jfif", name: "Travel"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: profiledaylist.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 35,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 32,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(profiledaylist[index].img),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 20,
                          bottom: 0,
                          child: Text(
                            profiledaylist[index].name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
                  ),
                );
              }),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Container(
              height: 100,
              child: Stack(children: const [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 35,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 32,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 20,
                    bottom: 0,
                    child: Text(
                      "New",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
