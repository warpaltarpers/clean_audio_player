import 'package:clean_framework/clean_framework.dart';
import '../bloc/sound_bloc.dart';
import 'sound_presenter.dart';
import 'package:flutter/material.dart';

class SoundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SoundBloc(),
      child: SoundPresenter(),
    );
  }
}
