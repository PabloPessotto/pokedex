import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/app/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String applicationJson = 'application/json';
const String contentType = 'Content-Type';
const String accept = 'accept';
const String authorization = 'Authorization';
const String defaultLanguage = 'language';
const String apiKey = 'x-api-key';

class DioFactory {
  // final AppPreferences _appPreferences;

  // DioFactory(this._appPreferences);

  Future<Dio> getDio() async {
    Dio dio = Dio();
    int timeout = 1; // 1 min
    // String language = await _appPreferences.getLanguage();
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      // defaultLanguage: language,
      // authorization: "Bearer ${await _appPreferences.getToken()}",
      // apiKey: await _appPreferences.getApiKey(),
    };
    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: headers,
      connectTimeout: Duration(minutes: timeout),
      receiveTimeout: Duration(minutes: timeout),
    );

    if (kReleaseMode) {
      debugPrint('release mode no logs');
    } else {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: false,
          requestBody: false,
          responseHeader: false,
          responseBody: false,
        ),
      );
    }

    return dio;
  }
}
