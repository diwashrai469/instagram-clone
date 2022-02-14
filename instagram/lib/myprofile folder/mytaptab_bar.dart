import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mygridview.dart';

class mytoptabbar extends StatefulWidget {
  const mytoptabbar({Key? key}) : super(key: key);

  @override
  _mytoptabbarState createState() => _mytoptabbarState();
}

class _mytoptabbarState extends State<mytoptabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: 540,
            height: 40,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              tabs: const [
                Icon(
                  CupertinoIcons.circle_grid_3x3,
                  color: Colors.black,
                  size: 30,
                ),
                Icon(
                  CupertinoIcons.arrowtriangle_right,
                  color: Colors.black,
                  size: 30,
                ),
                Icon(
                  CupertinoIcons.person_crop_square,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: 540,
            height: 205,
            child: TabBarView(
                controller: _tabController,
                children: [mygridview(), Text("hwllo"), Text("hwe")]),
          )
        ],
      ),
    );
  }
}
