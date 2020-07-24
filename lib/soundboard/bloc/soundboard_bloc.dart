import 'package:clean_framework/clean_framework.dart';
import 'package:clean_soundboard/soundboard/model/soundboard_view_model.dart';
import 'soundboard_usecase.dart';

class SoundBoardBloc extends Bloc {
  SoundBoardUseCase _useCase;
  
  final soundBoardViewModelPipe = Pipe<SoundBoardViewModel>();
  
  @override
  void dispose() {
    soundBoardViewModelPipe.dispose();
  }
  
  SoundBoardBloc({SoundBoardService sbService}) {
    _useCase = SoundBoardUseCase((viewModel) => soundBoardViewModelPipe.send(viewModel));
    soundBoardViewModelPipe.onListen(() => _useCase.execute());
  }
}