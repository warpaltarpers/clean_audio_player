import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:equatable/equatable.dart';

class SoundRequestModel extends Equatable implements JsonRequestModel {
  final String url;

  SoundRequestModel({this.url});

  @override
  Map<String, dynamic> toJson() {
    return {
      'url': url
    };
  }

  @override
  List<Object> get props => [url];
}