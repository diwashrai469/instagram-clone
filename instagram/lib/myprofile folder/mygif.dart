import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class mygif extends StatefulWidget {
  const mygif({Key? key}) : super(key: key);

  @override
  _mygifState createState() => _mygifState();
}

class _mygifState extends State<mygif> {
  late VideoPlayerController _controller;
  bool isplaying = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset("picture/videos/1.mp4")
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..initialize().then((value) => _controller.play());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller != null && _controller.value.isInitialized
        ? InkWell(
            onTap: () {
              isplaying = !isplaying;
              setState(() {
                isplaying ? _controller.pause() : _controller.play();
              });
            },
            child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller)),
          )
        : Center(
            child: Container(
            child: const CircularProgressIndicator(),
          ));
  }
}
