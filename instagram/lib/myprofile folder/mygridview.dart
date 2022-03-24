import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/mydetails.dart';
import 'package:instagram/myprofile%20folder/myprofilehero.dart';

class mygridview extends StatefulWidget {
  const mygridview({Key? key}) : super(key: key);

  @override
  _mygridviewState createState() => _mygridviewState();
}

class _mygridviewState extends State<mygridview> {
  List<gridviewlist> gridlist = [
    gridviewlist("picture/gridview/1.jpg", 1),
    gridviewlist("picture/gridview/2.jfif", 2),
    gridviewlist("picture/gridview/3.jpg", 3),
    gridviewlist("picture/gridview/4.jfif", 4),
    gridviewlist("picture/gridview/5.jfif", 5),
    gridviewlist("picture/gridview/6.jfif", 6),
    gridviewlist("picture/gridview/7.jpeg", 7),
    gridviewlist("picture/gridview/8.jfif", 8),
    gridviewlist("picture/gridview/9.jfif", 9)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
      child: Expanded(
        child: GridView.builder(
          itemCount: gridlist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
          itemBuilder: (BuildContext context, index) {
            return Hero(
              tag: Key(gridlist[index].id.toString()),
              child: Material(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return myprofilehero(gridlist[index]);
                      }));
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(gridlist[index].img),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
