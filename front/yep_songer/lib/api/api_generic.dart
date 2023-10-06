import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';
import 'package:yep_songer/api/interceptors/global_interceptor.dart';
import 'package:yep_songer/provider/locale_provider.dart';
import 'package:provider/provider.dart';

http.Client client =
    InterceptedClient.build(interceptors: [GlobalInterceptor()]);

class ApiGeneric {
  static Future<http.Response> makeGet(String url, bool withHeaders,
      BuildContext context, bool acceptLang) async {
    final localeProvider = Provider.of<LocaleProvider>(context, listen: false);
    final locale = localeProvider.locale;
    var head = {
      "Content-Type": "application/json",
      "Accept-Language": locale.toString()
    };
    if (!acceptLang) {
      head = {
        "Content-Type": "application/json",
      };
    }

    if (withHeaders) {
      return client.get(Uri.parse(url), headers: head);
    } else {
      return client.get(Uri.parse(url));
    }
  }

  static Future<http.Response> makePost(
      String url, dynamic parameters, bool withHeaders) async {
    if (withHeaders) {
      return client.post(Uri.parse(url),
          headers: {
            "Content-Type": "application/json",
          },
          body: parameters);
    } else {
      return client.post(Uri.parse(url), body: parameters);
    }
  }

  static Future<http.Response> makeDelete(
      String url, Map<String, dynamic> body, bool withHeaders) async {
    if (withHeaders) {
      return client.delete(Uri.parse(url),
          headers: {
            "Content-Type": "application/json",
          },
          body: body);
    } else {
      return client.delete(Uri.parse(url), body: body);
    }
  }

  static Future<http.Response> makePut(
      String url, Map<String, dynamic> body, bool withHeaders) async {
    if (withHeaders) {
      return client.put(Uri.parse(url),
          headers: {
            "Content-Type": "application/json",
          },
          body: body);
    } else {
      return client.put(Uri.parse(url), body: body);
    }
  }
}
