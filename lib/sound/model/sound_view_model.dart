import 'package:clean_framework/clean_framework.dart';

enum ServiceStatus { failed, successful, unknown }
enum DataStatus { valid, invalid, unknown }

class SoundViewModel extends ViewModel {
  final String soundUrl;
  final serviceStatus;
  final dataStatus;

  SoundViewModel(
      {this.soundUrl,
      this.serviceStatus = ServiceStatus.unknown,
      this.dataStatus = DataStatus.unknown});
}
