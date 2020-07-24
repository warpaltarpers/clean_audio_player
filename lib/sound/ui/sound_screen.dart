import 'package:flutter/material.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:audioplayer/audioplayer.dart';

class SoundScreen extends Screen {
  final url = 'https://s3.amazonaws.com/media.sampleapp.hunt/bell.wav';
  final AudioPlayer audioPlugin = AudioPlayer();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample clean_framework App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                audioPlugin.play(url);
              },
              color: Colors.blue[300],
              child: Text('Play Sound'))
          ],
        ),
      ),
    );
  }
}