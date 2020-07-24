import 'dart:async';

import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

import '../bloc/soundboard_bloc.dart';
import '../model/soundboard_view_model.dart';
import 'soundboard_screen.dart';

class SoundBoardPresenter 
    extends Presenter<SoundBoardBloc, SoundBoardViewModel, SoundBoardScreen> {
  @override
  Stream<SoundBoardViewModel> getViewModelStream(SoundBoardBloc bloc) {
    return bloc.soundBoardViewModelPipe.receive;
  }
  
  @override
  SoundBoardScreen buildScreen(
    BuildContext context, SoundBoardBloc bloc, SoundBoardViewModel viewModel) {
      return SoundBoardScreen(
        viewModel: viewModel,
        playSound: () {
          _playSound(context);
        },
      );
    }
} 