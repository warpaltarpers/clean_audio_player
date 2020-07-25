import 'dart:async';
import 'package:clean_framework/clean_framework.dart';
import '../bloc/sound_bloc.dart';
import '../model/sound_view_model.dart';
import 'sound_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SoundPresenter extends Presenter<SoundBloc, SoundViewModel, SoundScreen> {
  @override
  Stream<SoundViewModel> getViewModelStream(SoundBloc bloc) {
    return bloc.soundViewModelPipe.receive;
  }

  @override
  SoundScreen buildScreen(
      BuildContext context, SoundBloc bloc, SoundViewModel viewModel) {
    return SoundScreen(
      viewModel: viewModel,
      onChangeSoundUrl: (value) {
        _onChangeSoundUrl(value, bloc);
      },
      onTapSubmit: () {
        _onTapSubmit(bloc);
      },
    );
  }

  void _onChangeSoundUrl(String text, SoundBloc bloc) {
    bloc.soundUrlPipe.send(text);
  }

  void _onTapSubmit(SoundBloc bloc) {
    bloc.submitPipe.launch();
  }
}
