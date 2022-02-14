import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/mydetails.dart';

class myheroAnimation extends StatelessWidget {
  final mydetails address;
  myheroAnimation(this.address);

  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Hero(
          tag: Key(address.id.toString()),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(address.img),
          ),
        ),
      ),
    );
  }
}
