import 'package:flutter/material.dart';
import 'package:clean_framework/clean_framework.dart';
import 'sound_screen.dart';
import '../model/sound_view_model.dart';

class MainScreen extends Screen {
  final SoundViewModel svm = new SoundViewModel();

  @override
  Widget build(BuildContext context) {
    return SoundScreen(
      viewModel: svm,
    );
  }
}
