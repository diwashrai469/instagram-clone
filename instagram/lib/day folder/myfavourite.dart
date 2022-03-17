import 'package:flutter/material.dart';
import 'package:instagram/day%20folder/myfavouritefuntionusingprovider.dart';
import 'package:provider/provider.dart';

class myfavourite extends StatefulWidget {
  @override
  State<myfavourite> createState() => _myfavouriteState();
}

class _myfavouriteState extends State<myfavourite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Favourite"),
            centerTitle: true,
          ),
          body: GridView.builder(
              itemCount: context.watch<myfavouritelist>().count,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, index) {
                return Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:
                                  AssetImage(myfavouritelist.myfavlist[index]),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                      right: -10,
                      top: -15,
                      child: IconButton(
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            context
                                .read<myfavouritelist>()
                                .removeItems(myfavouritelist.myfavlist[index]);
                            // remove items form cart
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Removed from favourite"),
                              duration: Duration(seconds: 1),
                            ));
                          });
                        },
                        icon: const Icon(
                          Icons.remove_circle,
                          size: 18,
                        ),
                      ))
                ]);
              })),
    );
  }
}
