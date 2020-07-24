import 'dart:async';

import 'package:clean_framework/clean_framework.dart';
import 'package:audioplayer/audioplayer.dart';

class SoundBloc extends Bloc {
  final soundPipe = EventPipe();
  final AudioPlayer audioPlugin = AudioPlayer();
  final url = 'https://s3.amazonaws.com/media.sampleapp.hunt/bell.wav';
  
  @override
  void dispose() {
    soundPipe.dispose();
  }
  
  SoundBloc() {
    soundPipe.listen(playHandler);
  }
  
  void playHandler() {
    audioPlugin.play(url);
  }
  
}