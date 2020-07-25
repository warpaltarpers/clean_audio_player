import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

SoundLocator locator() => SoundLocator();

Logger logger() => SoundLocator().logger;

class SoundLocator implements Locator {
  SoundLocator._();

  factory SoundLocator() {
    Locator.instance ??= SoundLocator._();
    return Locator.instance;
  }

  @override
  Connectivity connectivity = AlwaysOnlineConnectivity();

  @override
  Logger logger = ConsoleLogger(LogLevel.nothing);
  SimpleRestApi api = SimpleRestApi();

  Repository repository = Repository();
}