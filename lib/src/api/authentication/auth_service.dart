/// auth_service.dart
///
/// @Author: Lê Xuân Mạnh
/// @Date:   2021-09-23 21:37:10
/// @Last Modified by:   Lê Xuân Mạnh
/// @Last Modified time: 2022-03-14 10:45:10
///
// ignore_for_file: avoid_print

// import 'package:nb_utils/nb_utils.dart';
import 'package:nb_utils/nb_utils.dart'; //hide setValue, getStringAsync;

// import '../../utils/shared_pref.dart';
import 'exceptions.dart';

// const values
const accessTokenSharedPrefKey = 'access_token';
const refreshTokenSharedPrefKey = 'refresh_token';

Future<void> setAuthToken(String accessToken) async {
  await setValue(accessTokenSharedPrefKey, accessToken, print: false);
}

// setValue(String accessTokenSharedPrefKey, String accessToken,
//     {required bool print}) {}

// Future<void> processAuthTokenResponse(
//     AuthorizationTokenResponse response) async {
//   await setValue(accessTokenSharedPrefKey, response.accessToken!, print: false);
//   await setValue(refreshTokenSharedPrefKey, response.refreshToken!,
//       print: false);
// }

// Future<void> logoutAction() async {
//   clearSharedPref();
// }

// Future<String?> processTokenResponse(TokenResponse? response) async {
//   if (response == null ||
//       response.accessToken == null ||
//       response.accessToken!.isEmpty) {
//     return null;
//   } else {
//     await setValue(refreshTokenSharedPrefKey, response.refreshToken,
//         print: false);
//     await setValue(accessTokenSharedPrefKey, response.accessToken,
//         print: false);
//     return response.refreshToken;
//   }
// }

String? getRefreshToken() {
  return getStringAsync(refreshTokenSharedPrefKey);
}

String? getStoredAccessToken() {
  return getStringAsync(accessTokenSharedPrefKey);
}

////////////////////////////////
/// get current access token with check expired.
///
AccessTokenObject? getAccessToken() {
  var token = getStringAsync(accessTokenSharedPrefKey);
  if (token.isEmptyOrNull) return null;
  var userId = getUserIdFromToken(token);
  // Map<String, dynamic>? decodedToken = JwtDecoder.decode(token);
  bool isTokenExpired = JwtDecoder.isExpired(token);
  if (isTokenExpired) {
    throw const TokenInvalidException(message: "Access token expired.");
  }
  return AccessTokenObject(userId: userId, token: token, invalid: false);
}

String getUserIdFromToken(String token) {
  final decodedToken = JwtDecoder.decode(token)!;
  final userId = decodedToken['sub'].toString();
  return userId;
}

Map<String, String>? getHttpHeaders() {
  var token = getStoredAccessToken();
  return token.isEmptyOrNull ? null : {"Authorization": "Bearer " + token!};
}

/// Access Token with some properties
class AccessTokenObject {
  final String? userId;
  final String? token;
  final bool? invalid;
  final bool? refresh;
  final bool? expired;

  AccessTokenObject(
      {this.userId, this.token, this.invalid, this.refresh, this.expired});

  bool isExpired() {
    if (token == null) {
      throw Exception("Token must not be not null");
    }
    return JwtDecoder.isExpired(token!);
  }

  @override
  String toString() {
    return '{invalid: $invalid, refresh: $refresh,expired: $expired,token: $token}';
  }
}
