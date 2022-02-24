import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class addpicture extends StatefulWidget {
  const addpicture({Key? key}) : super(key: key);

  @override
  _addpictureState createState() => _addpictureState();
}

class _addpictureState extends State<addpicture> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker.platform
          .pickImage(source: source); //to ad picture from gallery and camera
      if (image == null) return;
      final imagetemporary = File(image.path);
      setState(() {
        this.image = imagetemporary;
      });
    } on PlatformException catch (e) {
      print("fail to pick image:$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image != null
            ? Image.file(
                image!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              )
            : Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 10)),
                height: 300,
                width: 300,
                child: const Center(child: Text("my picture")),
              ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              pickImage(ImageSource.gallery);
            });
          },
          child: const Text("Gallery"),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                pickImage(ImageSource.camera);
              });
            },
            child: const Text("Camera"))
      ],
    )));
  }
}
