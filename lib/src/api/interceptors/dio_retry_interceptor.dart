import 'dart:async';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

// import 'package:meta/meta.dart';

import 'dio_retry_options.dart';

class RetryInterceptor extends Interceptor {
  final Dio dio;
  final Logger? logger;
  final RetryOptions? options;

  RetryInterceptor({
    required this.dio,
    this.logger,
    RetryOptions? options,
  }) : options = options ?? const RetryOptions();

  @override
  Future<dynamic> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    late RetryOptions? extra;
    if (err.response?.requestOptions != null) {
      extra = RetryOptions.fromExtra(err.response!.requestOptions);
    } else {
      extra = options;
    }

    if (extra != null) {
      var shouldRetry = extra.retries > 0 && await extra.retryEvaluator(err);
      if (shouldRetry) {
        if (extra.retryInterval.inMilliseconds > 0) {
          await Future.delayed(extra.retryInterval);
        }

        // Update options to decrease retry count before new try
        extra = extra.copyWith(
            retries: extra.retries - 1, retryInterval: extra.retryInterval);

        err.response!.requestOptions.extra = err.response!.requestOptions.extra
          ..addAll(extra.toExtra());

        try {
          // logger?.warning(
          //     "[${err.response!.requestOptions.uri}] An error occured during request, trying a again (remaining tries: ${extra.retries}, error: ${err.error})");
          logger?.w(
              "[${err.response!.requestOptions.uri}] An error occured during request, trying a again (remaining tries: ${extra.retries}, error: ${err.error})");

          // We retry with the updated options
          return await dio.request(
            err.response!.requestOptions.path,
            cancelToken: err.response!.requestOptions.cancelToken,
            data: err.response!.requestOptions.data,
            onReceiveProgress: err.response!.requestOptions.onReceiveProgress,
            onSendProgress: err.response!.requestOptions.onSendProgress,
            queryParameters: err.response!.requestOptions.queryParameters,
            options: extra.toOptions(),
          );
        } catch (e) {
          return e;
        }
      }
    }
    return super.onError(err, handler);
  }
}
