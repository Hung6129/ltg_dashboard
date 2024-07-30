class TokenInvalidException implements Exception {
  final String? message;
  const TokenInvalidException({this.message});
}

class TokenExpiredException implements Exception {
  final String? message;
  final int? statusCode;

  const TokenExpiredException({this.message, this.statusCode});
}
