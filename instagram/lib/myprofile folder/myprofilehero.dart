import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/mydetails.dart';

class myprofilehero extends StatelessWidget {
  final gridviewlist profileherolist;
  myprofilehero(this.profileherolist);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Hero(
        tag: Key(profileherolist.id.toString()),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.asset(profileherolist.img),
        ),
      ),
    );
  }
}
