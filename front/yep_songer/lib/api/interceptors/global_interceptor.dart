import 'package:flutter/material.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:yep_songer/api/api_auth.dart';
import 'package:yep_songer/utils/global_keys.dart';
import 'package:yep_songer/views/landing_page.dart';

class GlobalInterceptor implements InterceptorContract {
  SnackBar reconnectSnackBar =
      const SnackBar(content: Text("Veuillez vous reconnecter"));

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    if (Api.litToken == null && Api.litToken != "") {
      _showReconnectSnackBarAndPushToLogin();
    } else {
      data.headers.addAll({"Authorization": "Bearer " + Api.litToken});
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    print("STATUS CODE : " + data.statusCode.toString());
    if (data.statusCode == 401 && Api.litToken != "") {
      _showReconnectSnackBarAndPushToLogin();
    }
    return data;
  }

  void _showReconnectSnackBarAndPushToLogin() {
    Api.litToken = "";
    Future.delayed(Duration.zero, () {
      GlobalKeys.scaffoldMessengerKey.currentState
          ?.showSnackBar(reconnectSnackBar);
      GlobalKeys.navigatorKey.currentState?.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const LandingPage()),
          (route) => true);
    });
  }
}
