import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/mydetails.dart';

class newsfeedPage extends StatefulWidget {
  @override
  _newsfeedPageState createState() => _newsfeedPageState();
}

class _newsfeedPageState extends State<newsfeedPage> {
  final List<bool> _likes = List.filled(myfeedlist.length,
      true); //when onclick on one post only one is liked not other

  static List<newsfeeddetails> myfeedlist = [
    newsfeeddetails("picture/newsfeed/post/fot.jfif", "12745 likes",
        "Football arena", "picture/newsfeed/icons/football.png", 1),
    newsfeeddetails("picture/newsfeed/post/fot1.jfif", "21234 likes",
        "Football arena", "picture/newsfeed/icons/football.png", 2),
    newsfeeddetails("picture/newsfeed/post/luffy.png", "31236 likes",
        "One piece", "picture/newsfeed/icons/luffy.png", 3),
    newsfeeddetails("picture/newsfeed/post/mheecha.jpg", "41246 likes",
        "mheecha", "picture/newsfeed/icons/mheecha.png", 4),
    newsfeeddetails("picture/newsfeed/post/rob.jfif", " 5425 likes",
        "Routine of nepal banda", "picture/newsfeed/icons/ronb.jpg", 5),
    newsfeeddetails("picture/newsfeed/post/mheecha.jpg", " 421 likes",
        "mheecha", "picture/newsfeed/icons/mheecha.png", 6),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 650,
        width: 400,
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: ListView.builder(
          itemCount: myfeedlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    myfeedlist[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: PopupMenuButton(
                      itemBuilder: (context) => [
                            const PopupMenuItem(
                              child: Text("unfollow"),
                              value: 1,
                            ),
                            const PopupMenuItem(
                              child: Text("Report"),
                              value: 2,
                            ),
                            const PopupMenuItem(
                              child: Text("about this accout"),
                              value: 3,
                            )
                          ]),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    backgroundImage: AssetImage(myfeedlist[index].logoname),
                  ),
                ),
                InkWell(
                    onDoubleTap: () {
                      _likes[index] = !_likes[index];
                      setState(() {});
                    },
                    child: Image(image: AssetImage(myfeedlist[index].img))),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            _likes[index] = !_likes[index];
                            setState(() {});
                          },
                          child: _likes[index]
                              ? const Icon(
                                  CupertinoIcons.heart,
                                  size: 30,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  CupertinoIcons.heart_fill,
                                  size: 30,
                                  color: Colors.red,
                                )),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Icon(
                          CupertinoIcons.chat_bubble,
                          size: 30,
                        ),
                      ),
                      const Icon(
                        CupertinoIcons.paperplane,
                        size: 30,
                      ),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                CupertinoIcons.bookmark,
                                size: 30,
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                      child: Text(
                        myfeedlist[index].id.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
