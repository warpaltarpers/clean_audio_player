import 'package:flutter/material.dart';
import 'package:clean_framework/clean_framework.dart';
import 'sound_screen.dart';
import '../model/sound_view_model.dart';
import '../bloc/sound_bloc.dart';

class MainScreen extends Screen {
  final SoundViewModel svm = new SoundViewModel();
  final SoundBloc bloc = new SoundBloc();

  @override
  Widget build(BuildContext context) {
    return SoundScreen(
      viewModel: svm,
      onChangeSoundUrl: bloc.soundUrlInputHandler,
      onTapSubmit: bloc.submitHandler,
    );
  }
}
