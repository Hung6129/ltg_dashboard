/// dio_bearer_interceptor.dart
///
/// @Author: Lê Xuân Mạnh
/// @Date:   2021-09-22 17:05:43
/// @Last Modified by:   Lê Xuân Mạnh
/// @Last Modified time: 2021-12-30 11:44:42
///
// ignore_for_file: implementation_imports

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:provider/src/provider.dart';
import 'package:ltg_api/src/auth/auth.dart' show AuthInterceptor;
// import 'package:sgcrapp_authentication/sgcrapp_authentication.dart';
// import 'package:sgcrmobile/api/authentication/auth_service.dart';

class BearerAuthInterceptor extends AuthInterceptor {
  final Map<String, String> tokens = {};
  final BuildContext? context;

  BearerAuthInterceptor({this.context});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // var hasToken = false;
    // final authInfo = getAuthInfo(options,
    //     (secure) => secure['type'] == 'http' && secure['scheme'] == 'bearer');
    // for (final info in authInfo) {
    //   final token = tokens[info['name']];
    //   if (token != null) {
    //     options.headers['Authorization'] = 'Bearer $token';
    //     hasToken = true;
    //     break;
    //   }
    // }

    // // Get token from storage
    // if (!hasToken) {
    //   try {
    //     final accessToken = getAccessToken();
    //     if (accessToken == null || accessToken.invalid == true) {
    //       if (context != null) {
    //         try {
    //           // relogin
    //           context!
    //               .read<AuthenticationBloc>()
    //               .add(AuthenticationLogoutRequested());
    //         } catch (e) {
    //           debugPrint(e.toString());
    //         }
    //       }
    //     } else if (accessToken.token != null) {
    //       options.headers['Authorization'] = 'Bearer ${accessToken.token}';
    //     }
    //   } catch (e) {
    //     debugPrint(e.toString());
    //     rethrow;
    //   }
    // }

    super.onRequest(options, handler);
  }
}
