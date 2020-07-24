import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/services.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

class SoundBoardServiceAdapter extends ServiceAdapter<SoundBoardEntity,
    JsonRequestModel, SoundBoardServiceResponseModel, SoundBoardService> {
  SoundBoardServiceAdapter() : super(SoundBoardSevice());
  
  @override
  SoundBoardEntity createEntity(
      SoundBoardEntity initialEntity, SoundBoardServiceResponseModel responseModel) {
    return initialEntity.merge();
  }
}