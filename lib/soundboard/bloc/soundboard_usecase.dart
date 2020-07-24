import 'package:clean_framework/clean_framework.dart';
import '../model/soundboard_view_model.dart';

class SoundBoardUseCase extends UseCase {
  Function(ViewModel) _viewModelCallback;
  
  SoundBoardUseCase(Function(ViewModel) viewModelCallback)
      : assert(viewModelCallback != null), _viewModelCallback = viewModelCallback;
      
  void execute() async {
    final scope = SoundBoardLocator()
        .repository
        .create<SoundBoardEntity>(SoundBoardEntity(), _notifySubscribers);

    await SoundBoardLocator()
        .repository
        .runServiceAdapter(scope, SoundBoardServiceAdapter());
  }

  void _notifySubscribers(entity) {
    _viewModelCallBack(buildViewModel(entity));
  }

  SoundBoardViewModel buildViewModel(SoundBoardEntity entity) {
    return SoundBoardViewModel();
  }
}