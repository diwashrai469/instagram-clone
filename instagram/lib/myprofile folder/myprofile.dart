import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/my_days.dart';
import 'package:instagram/login/signin%20folder/loginpage.dart';
import 'package:instagram/myprofile%20folder/mytaptab_bar.dart';
import 'package:instagram/myprofile%20folder/profile_day.dart';

class myProfile extends StatefulWidget {
  const myProfile({Key? key}) : super(key: key);

  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  _showModalSheet() {
    //when clicked message pop from bottom
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (builder) {
          return Container(
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  title: Text(
                    "Setting",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.archive_outlined,
                    size: 30,
                  ),
                  title: Text(
                    "Archive",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.checklist_outlined,
                    size: 30,
                  ),
                  title: Text(
                    "Close Friends",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 30,
                  ),
                  title: Text(
                    "OR Code",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout_outlined,
                    size: 30,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return logInPage();
                      }));
                    },
                    child: const Text(
                      "Log Out",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            padding: const EdgeInsets.fromLTRB(10, 40.0, 40, 40),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.lock_outlined),
            title: Row(
              children: [
                const Text(
                  "MonkeyD.Luffy",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                MaterialButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: const Icon(Icons.arrow_drop_down_circle_outlined))
              ],
            ),
            trailing: FittedBox(
              child: Row(
                children: [
                  const Icon(CupertinoIcons.add_circled),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, elevation: 0),
                      onPressed: () {
                        setState(() {
                          _showModalSheet();
                        });
                      },
                      child: const Icon(
                        Icons.dehaze,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Stack(children: const [
                        CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage("picture/days/luffy.jfif")),
                        Positioned(
                            bottom: 10,
                            right: 0,
                            child: Text(
                              "MonkeyD.luffy,\nTV show,\n.One Piece Visuals, ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ))
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 35, 8, 0),
                    child: Column(
                      children: const [
                        Text(
                          "5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text(
                          "post",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 35, 8, 0),
                    child: Column(
                      children: const [
                        Text(
                          "156K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 35, 8, 0),
                    child: Column(
                      children: const [
                        Text(
                          "264",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.person_add,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              profileDay(),
              const SizedBox(
                height: 8,
              ),
              mytoptabbar()
            ],
          )
        ],
      ),
    );
  }
}
