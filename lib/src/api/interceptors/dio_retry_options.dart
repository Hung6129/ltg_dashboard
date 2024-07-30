/// dio_retry_options.dart
///
/// @Author: Lê Xuân Mạnh
/// @Date:   2021-09-22 17:27:25
/// @Last Modified by:   Lê Xuân Mạnh
/// @Last Modified time: 2021-09-30 09:25:54
///
import 'dart:async';

import 'package:dio/dio.dart';

typedef RetryEvaluator = FutureOr<bool> Function(DioError error);

class RetryOptions {
  /// The number of retry in case of an error
  final int retries;

  /// The interval before a retry.
  final Duration retryInterval;

  /// Evaluating if a retry is necessary.regarding the error.
  ///
  /// It can be a good candidate for additional operations too, like
  /// updating authentication token in case of a unauthorized error (be careful
  /// with concurrency though).
  ///
  /// Defaults to [defaultRetryEvaluator].
  RetryEvaluator get retryEvaluator => _retryEvaluator ?? defaultRetryEvaluator;

  final RetryEvaluator? _retryEvaluator;

  const RetryOptions(
      {this.retries = 3,
      RetryEvaluator? retryEvaluator,
      this.retryInterval = const Duration(seconds: 1)})
      : _retryEvaluator = retryEvaluator;

  factory RetryOptions.noRetry() {
    return const RetryOptions(
      retries: 0,
    );
  }

  static const extraKey = "cache_retry_request";

  /// Returns [true] only if the response hasn't been cancelled or got
  /// a bas status code.
  static FutureOr<bool> defaultRetryEvaluator(DioError error) {
    return error.type != DioErrorType.cancel &&
        error.type != DioErrorType.badResponse;
  }

  factory RetryOptions.fromExtra(RequestOptions requestOptions) {
    return requestOptions.extra[extraKey];
  }

  RetryOptions copyWith({
    required int retries,
    required Duration retryInterval,
  }) =>
      RetryOptions(
        retries: retries,
        retryInterval: retryInterval,
      );

  Map<String, dynamic> toExtra() {
    return {
      extraKey: this,
    };
  }

  Options toOptions() {
    return Options(extra: toExtra());
  }
}
