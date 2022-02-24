import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/mydetails.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class mysearch extends StatefulWidget {
  @override
  _mysearchState createState() => _mysearchState();
}

class _mysearchState extends State<mysearch> {
  List<videaandimage> videaimagelist = [
    videaandimage(1,
        "https://wallpaperboat.com/wp-content/uploads/2020/02/anime-cloud-12-scaled.jpg"),
    videaandimage(2,
        "https://leaveyourdailyhell.com/wp-content/uploads/2018/10/Chinatown.jpg"),
    videaandimage(3,
        "https://www.picclickimg.com/d/l400/pict/152361773929_/Kimi-no-Na-wa-Makoto-Shinkai-Your-Name.jpg"),
    videaandimage(4,
        "https://www.ugaoo.com/knowledge-center/wp-content/uploads/2016/03/shutterstock_366675344.jpg"),
    videaandimage(
        5, "https://gaameover.com/wp-content/uploads/2017/03/028.png"),
    videaandimage(6,
        "https://www.wallpapers.net/web/wallpapers/dota-2-logo-hd-wallpaper/thumbnail/lg.jpg"),
    videaandimage(7,
        "https://koreandrama435792045.files.wordpress.com/2020/02/kim-so-hyun-1.png"),
    videaandimage(8,
        "https://www.freebuyer.ru/images/201907/source_img/208204/cheap-2019-air-jordan-4-sneakers-for-men-in-208204-cheap-jordan4.jpg"),
    videaandimage(9,
        "https://static.india.com/wp-content/uploads/2020/09/Neymar-in-action-during-PSG-clash-in-Ligue-1%C2%A9Twitter.jpg"),
    videaandimage(10,
        "https://www.paintafish.org/wp-content/uploads/2020/07/Best-Aquarium-Decorations.jpg"),
    videaandimage(11,
        "https://1.bp.blogspot.com/-b95iwR_IvgU/X4RF-QCi_3I/AAAAAAABOP0/qKT936364fc-RwsRfsmk-LuDp0a64IFcACLcBGAsYHQ/w1200/2021_maxus_d60.jpg"),
    videaandimage(12,
        "https://itech.co.ua/wp-content/uploads/2020/12/apple-iphone-13-1068x580.jpg"),
    videaandimage(13,
        "https://www.justgoodfood.com/wp-content/uploads/2019/11/Events-Lunches-party-catering-1-1024x683.jpg"),
    videaandimage(14,
        "https://cdn.allwallpaper.in/wallpapers/1920x1080/10931/ice-sunrise-mountains-lakes-skies-1920x1080-wallpaper.jpg"),
    videaandimage(15,
        "https://i2.wp.com/sunsetobsession.com/wp-content/uploads/2019/04/Tropical-Sunset.jpg?fit=1920%2C1365&ssl=1"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 8),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 700,
              width: 500,
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 3,
                itemCount: videaimagelist.length,
                itemBuilder: (BuildContext context, index) =>
                    videaimagelist[index].img != null
                        ? Container(
                            height: 50,
                            width: 50,
                            child:  Image.network(
                              videaimagelist[index].img,
                              fit: BoxFit.cover,
                            ))
                        : const Center(
                            child: CircularProgressIndicator(
                              color: Colors.blue,
                            ),
                          ),
                staggeredTileBuilder: (index) => StaggeredTile.count(

                    (index % 6 == 0) ? 2 : 1, (index % 6 == 0) ? 2 : 1),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
