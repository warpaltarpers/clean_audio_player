import 'package:clean_framework/clean_framework.dart';
import '../api/sound_api.dart';
import '../api/sound_request_model.dart';
import '../api/sound_response_model.dart';
import 'package:clean_framework_example/payment/model/payment_entity.dart'; //TODO: Build file

class SoundAdapter extends ServiceAdapter<SoundEntity,
    SoundRequestModel, SoundResponseModel, SoundService> {
  SoundAdapter() : super(SoundService());

  @override
  SoundEntity createEntity(
      SoundEntity initialEntity, SoundResponseModel responseModel) {
    return initialEntity.merge(errors: <EntityError>[]);
  }

  @override
  SoundRequestModel createRequest(SoundEntity entity) {
    return SoundRequestModel(
        url: entity.soundUrl,);
  }
}