/// ltg_api_service.dart
///
/// @Author: Lê Xuân Mạnh
/// @Date:   2023-03-02 16:59:33
/// @Last Modified by:   Lê Xuân Mạnh
/// @Last Modified time: 2023-03-02
///
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';

import '../authentication/auth_service.dart';
import '../config/config.dart';

class LtgService {
  static Dio? _dio;
  static Dio? _dioCache;
  // static DioCacheManager? _manager;
  // static const baseUrl = _bas

  // static DioCacheManager getCacheManager() {
  //   _manager ??= DioCacheManager(CacheConfig(baseUrl: baseUrl));
  //   return _manager!;
  // }

  /// Creates instance of [Dio] to be used in the remote layer of the app.
  static Dio createDio(BuildContext? context, BaseOptions baseConfiguration,
      {bool useCache = false,
      bool forceRefresh = false,
      Duration? cacheDuration}) {
    if (useCache) {
      if (null == _dioCache) {
        _dioCache = Dio(baseConfiguration);
        _dioCache!.interceptors.addAll([
          // LogInterceptor(),
          // BearerAuthInterceptor(context: context),
          // RetryInterceptor(dio: dio)
          // interceptor to retry failed requests
          // interceptor to add bearer token to requests
          // interceptor to refresh access tokens
          // interceptor to log requests/responses
          // etc.
        ]);
      }

      // Options cacheOptions = buildCacheOptions(
      //     cacheDuration ?? const Duration(hours: 1),
      //     forceRefresh: forceRefresh);
      // _dioCache!.interceptors.add(getCacheManager().interceptor);
      // _dioCache!.options.extra.addAll(cacheOptions.extra!);

      return _dioCache!;
    } else {
      if (null == _dio) {
        _dio = Dio(baseConfiguration);
        _dio!.interceptors.addAll([
          // LogInterceptor(),
          //BearerAuthInterceptor(context: context),
          // RetryInterceptor(dio: dio)
          // interceptor to retry failed requests
          // interceptor to add bearer token to requests
          // interceptor to refresh access tokens
          // interceptor to log requests/responses
          // etc.
        ]);
      }

      return _dio!;
    }
  }

  /// Creates Dio Options for initializing a Dio client.
  ///
  /// [baseUrl] Base url for the configuration
  /// [connectionTimeout] Timeout when sending data
  /// [connectionReadTimeout] Timeout when receiving data
  static BaseOptions createDioOptions(
      String baseUrl,
      Map<String, dynamic> headers,
      int connectionTimeout,
      int connectionReadTimeout) {
    return BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      connectTimeout: new Duration(seconds: connectionTimeout),
      receiveTimeout: new Duration(seconds: connectionReadTimeout),
    );
  }

  /// Creates an instance of the backend API with default options.
  static LtgApi createLtgApi(
      {BuildContext? context,
      bool useCache = false,
      bool forceRefresh = false,
      Duration? cacheDuration}) {
    var headers = <String, dynamic>{};
    final accessToken = getAccessToken();
    if (accessToken?.token != null) {
      headers['Authorization'] = 'Bearer ${accessToken!.token!}';
    }
    final options = createDioOptions(baseUrl, headers, 30000, 30000); // 30s
    final dio = createDio(context, options,
        useCache: useCache,
        forceRefresh: forceRefresh,
        cacheDuration: cacheDuration);
    return LtgApi(dio: dio, serializers: standardSerializers);
  }
}
