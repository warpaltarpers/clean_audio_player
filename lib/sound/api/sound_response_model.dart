import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:equatable/equatable.dart';

class SoundResponseModel extends Equatable
    implements JsonResponseModel {
  final bool didSucceed;

  SoundResponseModel.fromJson(Map<String, dynamic> json)
      : didSucceed = true;

  @override
  List<Object> get props => [didSucceed];
}