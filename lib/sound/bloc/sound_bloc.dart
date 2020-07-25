import 'package:clean_framework/clean_framework.dart';
import '../api/sound_api.dart';
import 'sound_usecase.dart';
import 'package:clean_framework_example/payment/model/payment_view_model.dart'; //TODO: Build file

class SoundBloc extends Bloc {
  SoundUseCase _soundUseCase;
  final url = 'https://s3.amazonaws.com/media.sampleapp.hunt/bell.wav';

  final soundViewModelPipe = Pipe<SoundViewModel>();
  final soundUrlPipe = Pipe<String>();

  @override
  void dispose() {
    soundViewModelPipe.dispose();
    soundUrlPipe.dispose();
  }

  SoundBloc({SoundService SoundService}) {
    _soundUseCase = SoundUseCase((viewModel) => soundViewModelPipe.send(viewModel));
    
    soundViewModelPipe.onListen(() => _soundUseCase.create());
    soundUrlPipe.receive.listen(soundUrlInputHandler);
  }

  void amountInputHandler(String soundUrl) {
    _soundUseCase.playSound(soundUrl);
  }
}