import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'GOOGLE_MAPS_API_KEY', obfuscate: true)
  static final gmApiKey = _Env.gmApiKey;
}
