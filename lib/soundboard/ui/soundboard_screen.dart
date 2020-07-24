import 'package:clean_framework/clean_framework.dart';
import '../model/soundboard_view_model.dart';
import 'package:flutter/material.dart';

class SoundBoardScreen extends Screen {
  final SoundBoardViewModel viewModel;
  final VoidCallback playSound;
  
  SoundBoardScreen({@required this.viewModel, @required this.playSound}) 
  : assert(() {
      return viewModel != null;
    }());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Play Sound'),
          onPressed: null
        ),
      ),
    );
  }
}