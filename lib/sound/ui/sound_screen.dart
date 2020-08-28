import 'package:clean_framework/clean_framework.dart';
import '../model/sound_view_model.dart';
import 'package:flutter/material.dart';

class SoundScreen extends Screen {
  final SoundViewModel viewModel;
  final Function onChangeSoundUrl;
  final VoidCallback onTapSubmit;

  SoundScreen({this.viewModel, this.onChangeSoundUrl, this.onTapSubmit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample clean_framework App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFieldListTile(
              type: 'text',
              textTitle: 'Sound URL',
              text: viewModel.soundUrl,
              onChangeTextField: (value) {
                onChangeSoundUrl(value);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            RaisedButton.icon(
                icon: Icon(Icons.play_arrow),
                label: Text('Submit'),
                onPressed: () {
                  onTapSubmit();
                })
          ],
        ),
      ),
    );
  }
}

@visibleForTesting
class TextFieldListTile extends ListTile {
  final String textTitle;
  final String type;
  final String text;
  final Function onChangeTextField;

  TextFieldListTile({
    this.textTitle,
    this.type,
    this.text,
    this.onChangeTextField,
  });

  Widget _buildContentField(BuildContext context) {
    final textController = TextEditingController();
    textController.text = text;
    textController.selection = TextSelection.fromPosition(
        TextPosition(offset: textController.text.length));
    return Container(
      child: TextField(
        controller: textController,
        keyboardType: TextInputType.url,
        enableInteractiveSelection: true,
        onChanged: (value) {
          onChangeTextField(value);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Text(
                    textTitle,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(child: _buildContentField(context)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
