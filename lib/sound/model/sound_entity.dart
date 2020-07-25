import 'package:clean_framework/clean_framework.dart';

class SoundEntity extends Entity {
  final String soundUrl;

  SoundEntity(
      {List<EntityError> errors = const [],
      String soundUrl})
      : soundUrl = soundUrl ?? '';

  @override
  List<Object> get props => [errors, soundUrl];

  @override
  merge({errors, String soundUrl}) {
    return SoundEntity(
        errors: errors ?? this.errors,
        soundUrl: soundUrl ?? this.soundUrl);
  }
}