import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

import 'soundboard_presenter.dart';

class SoundBoardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(child: SoundBoardPresenter(),);
  }
}