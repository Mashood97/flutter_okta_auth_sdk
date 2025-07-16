

import 'package:flutter/foundation.dart';

import 'okta_sdk_interface.dart';

class OktaSdkMobile implements OktaSdk {
  @override
  void initialize() {
    // Mobile-specific Okta setup
    print("Okta initialized for mobile");
  }



  Future<bool?> webSignIn(Map<String, dynamic> config) async {
    debugPrint('webSignIn called on non-web platform.');
    return false;
  }
}