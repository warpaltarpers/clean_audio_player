import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import '../../sound_locator.dart';
import 'sound_request_model.dart';
import 'sound_response_model.dart';

class SoundService extends EitherService<SoundRequestModel,
    SoundResponseModel> {
  SoundService()
      : super(
            method: RestMethod.post,
            restApi: SoundLocator().api,
            path: 'play-sound');

  @override
  SoundResponseModel parseResponse(Map<String, dynamic> jsonResponse) {
    return SoundResponseModel.fromJson(jsonResponse);
  }
}