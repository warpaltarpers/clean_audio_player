import 'package:flutter/material.dart';
import 'package:clean_framework/clean_framework.dart';
import '../bloc/sound_bloc.dart';

class SoundScreen extends Screen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample clean_framework App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                
              },
              color: Colors.blue[300],
              child: Text('Play Sound'))
          ],
        ),
      ),
    );
  }
}