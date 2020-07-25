// Audio file for testing - https://s3.amazonaws.com/media.sampleapp.hunt/bell.wav

import 'package:clean_soundboard/sound/ui/sound_widget.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: SoundWidget(),
    ),
  );
}
