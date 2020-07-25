import 'package:clean_framework/clean_framework.dart';
import '../api/sound_api.dart';
import 'sound_usecase.dart';
import '../model/sound_view_model.dart';

class SoundBloc extends Bloc {
  SoundUseCase _soundUseCase;
  final url = 'https://s3.amazonaws.com/media.sampleapp.hunt/bell.wav';

  final soundViewModelPipe = Pipe<SoundViewModel>();
  final soundUrlPipe = Pipe<String>();
  final submitPipe = EventPipe();

  @override
  void dispose() {
    soundViewModelPipe.dispose();
    soundUrlPipe.dispose();
    submitPipe.dispose();
  }

  SoundBloc({SoundService SoundService}) {
    _soundUseCase =
        SoundUseCase((viewModel) => soundViewModelPipe.send(viewModel));

    soundViewModelPipe.onListen(() => _soundUseCase.create());
    soundUrlPipe.receive.listen(soundUrlInputHandler);
    submitPipe.listen(submitHandler);
  }

  void soundUrlInputHandler(String soundUrl) {
    _soundUseCase.updateSoundUrl(soundUrl);
  }

  void submitHandler() {
    _soundUseCase.submit();
  }
}
