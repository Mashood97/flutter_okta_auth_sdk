import 'dart:convert';
import 'dart:js' as js;
import 'package:flutter/foundation.dart';

import 'okta_sdk_interface.dart';

class OktaSdkWeb implements OktaSdk {
  @override
  void initialize() {
    // Web-specific Okta setup using dart:js
    js.context.callMethod('console.log', ['Okta initialized for web']);
  }


  Future<bool?> webSignIn(Map<String, dynamic> config) async {
    try {
      await js.context.callMethod('loginOkta', [jsonEncode(config)]);
      return true;
    } catch (e) {
      debugPrint('Error calling loginOkta: $e');
      return false;
    }
  }
}