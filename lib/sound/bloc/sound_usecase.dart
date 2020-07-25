import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import '../../sound_locator.dart';
import 'sound_adapter.dart';
import 'package:clean_framework_example/payment/model/payment_entity.dart'; //TODO: Build File
import 'package:clean_framework_example/payment/model/payment_view_model.dart'; //TODO: Build File

class SoundUseCase extends UseCase {
  Function(ViewModel) _viewModelCallBack;

  RepositoryScope _scope;

  SoundUseCase(Function(ViewModel) viewModelCallBack)
      : assert(viewModelCallBack != null),
        _viewModelCallBack = viewModelCallBack;

  void create() async {
    _scope = SoundLocator().repository.containsScope<SoundEntity>();
    if (_scope == null) {
      final newSoundEntity = SoundEntity();
      _scope = SoundLocator()
          .repository
          .create<SoundEntity>(newSoundEntity, _notifySubscribers);
    } else {
      _scope.subscription = _notifySubscribers;
    }
    final entity = SoundLocator().repository.get<SoundEntity>(_scope);
    _viewModelCallBack(buildViewModelForLocalUpdate(entity));
  }

  void playSound(String soundUrl) async {
    final entity = SoundLocator().repository.get<SoundEntity>(_scope);

    final updatedEntity = entity.merge(soundUrl: soundUrl);
    SoundLocator().repository.update<SoundEntity>(_scope, updatedEntity);
    _viewModelCallBack(buildViewModelForLocalUpdate(updatedEntity));
  }

  void _notifySubscribers(entity) {
    _viewModelCallBack(buildViewModelForServiceUpdate(entity));
  }

  SoundViewModel buildViewModelForServiceUpdate(SoundEntity entity) {
    if (entity.hasErrors()) {
      return SoundViewModel(
          url: entity.soundUrl,
          serviceStatus: ServiceStatus.failed);
    } else {
      return SoundViewModel(
          url: entity.soundUrl,
          serviceStatus: ServiceStatus.successful);
    }
  }

  SoundViewModel buildViewModelForLocalUpdate(SoundEntity entity) {
    return SoundViewModel(
        url: entity.soundUrl);
  }

  SoundViewModel buildViewModelForLocalUpdateWithError(SoundEntity entity) {
    return SoundViewModel(
        url: entity.soundUrl,
        dataStatus: DataStatus.invalid);
  }
}