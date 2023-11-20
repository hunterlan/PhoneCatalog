import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env{
  @EnviedField(varName: 'RAPID_KEY',obfuscate: true)
  static final String rapidKey = _Env.rapidKey;
}