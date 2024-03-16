import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
// import 'package:wakelock/wakelock.dart';

// ignore: must_be_immutable
class Exercisecontent extends StatefulWidget {
  var text;
  String urltext;
  Exercisecontent({required this.urltext});

  @override
  State<Exercisecontent> createState() => _ExercisecontentState();
}

class _ExercisecontentState extends State<Exercisecontent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoPlayerView(
        url: widget.urltext,
        dataSourceType: DataSourceType.asset,
      ),
      width: 200,
      height: 250,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffdadada),
      ),
    );
  }
}

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView(
      {super.key, required this.url, required this.dataSourceType});
  final String url;
  final DataSourceType dataSourceType;

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  // get text => Exercisecontent;

  @override
  void initState() {
    // Wakelock.enable();
    super.initState();
    switch (widget.dataSourceType) {
      case DataSourceType.asset:
        _videoPlayerController = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.network:
        // ignore: deprecated_member_use
        _videoPlayerController = VideoPlayerController.network(widget.url);
        break;
      case DataSourceType.file:
        _videoPlayerController = VideoPlayerController.file(File(widget.url));
        break;
      case DataSourceType.contentUri:
        _videoPlayerController =
            VideoPlayerController.contentUri(Uri.parse(widget.url));
    }
    _videoPlayerController.initialize().then((_) => setState(
          () => _chewieController = ChewieController(
              videoPlayerController: _videoPlayerController,
              aspectRatio: _videoPlayerController.value.aspectRatio),
        ));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Text(
        //   Exercisecontent.text.toUpperCase(),
        //   style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
        // const Divider(),
        _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: Chewie(controller: _chewieController),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
