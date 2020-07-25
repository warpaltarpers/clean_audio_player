import 'package:clean_soundboard/sound/ui/sound_widget.dart';
import 'package:flutter/material.dart';
import 'sound/ui/sound_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: SoundWidget(),
    ),
  );
}
