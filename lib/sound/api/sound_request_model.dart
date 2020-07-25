import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:equatable/equatable.dart';

class SoundRequestModel extends Equatable implements JsonRequestModel {
  final String soundUrl;

  SoundRequestModel({this.soundUrl});

  @override
  Map<String, dynamic> toJson() {
    return {'soundUrl': soundUrl};
  }

  @override
  List<Object> get props => [soundUrl];
}
