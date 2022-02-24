import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/mydetails.dart';

class profiledayhero extends StatefulWidget {
  profiledaydetails myherolist;
  profiledayhero(this.myherolist);

  @override
  State<profiledayhero> createState() => _profiledayheroState();
}

class _profiledayheroState extends State<profiledayhero> {
  bool mytextfield = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.black,
            body: ListView(children: [
              Container(
                height: 685,
                width: 505,
                child: Hero(
                  tag: Key(widget.myherolist.img),
                  child: Image(
                      image: AssetImage(widget.myherolist.img),
                      fit: BoxFit.contain),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: TextFormField(
                        onTap: () {
                          setState(() {
                            mytextfield = !mytextfield;
                          });
                        },
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 8, 5, 8),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Colors.blueGrey.shade200),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueGrey.shade200),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Send message",
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                    const Flexible(
                        flex: 1,
                        child: Icon(
                          CupertinoIcons.paperplane,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
