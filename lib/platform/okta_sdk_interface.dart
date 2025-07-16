// Expose common interface for conditional import




export 'okta_sdk_web.dart'
if (dart.library.io) 'okta_sdk_mobile.dart';
abstract class OktaSdk {
  void initialize();
}