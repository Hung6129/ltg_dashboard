import 'package:ltg_dashboard/src/utils/date_helper.dart';
import 'package:meta/meta.dart';

import 'dart:convert';

class UserInfo {
  @protected
  UserInfo(this._data);

  final Map<String, dynamic> _data;

  String? get fullName {
    return _data['full_name'];
  }

  String? get userName {
    return _data['preferred_username'];
  }

  String? get name {
    return _data['name'];
  }

  String? get employeeId {
    return _data['employee_id'];
  }

  String? get email {
    return _data['email'];
  }

  String? get phone {
    return _data['phone'];
  }

  String? get picture {
    return _data['picture'];
  }

  String? get birthday {
    var date = DateTime.parse(_data['birthday']);
    return date.formatedDate;
  }

  /// The user's unique ID.
  String? get uid {
    return _data['sub'];
  }

  @override
  String toString() {
    return '$UserInfo(fullName: $fullName, employeeId: $employeeId, email: $email, phone: $phone, picture: $picture, birthday: $birthday, uid: $uid)';
  }

  UserInfo.fromJson(Map<String, dynamic> json) : _data = validate(json);

  Map<String, dynamic> toJson() => _data;

  @protected
  static Map<String, dynamic> validate(Map<String, dynamic> json) {
    if (json.containsKey('picture')) {
      json['picture'] = json['picture']
          // .replaceAll('sgcrapp.blob.core.windows.net', 'cdn.sgcr.app')
          .replaceAll('%2F', '/');
    }
    return json;
  }

  UserInfo.fromJsonString(String json) : _data = jsonDecode(json);
  String toJsonString() => jsonEncode(_data);
}
