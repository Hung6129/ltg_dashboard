import 'package:intl/intl.dart';
// import 'package:ltg_api/ltg_api.dart';

/// date_helper.dart
///
/// @Author: Lê Xuân Mạnh
/// @Date:   2021-10-19 12:53:39
/// @Last Modified by:   Lê Xuân Mạnh
/// @Last Modified time: 2022-05-23 17:09:20
///
///

const String locale = 'vi';

String _formatDateTime(DateTime? date, {String? format = 'dd/MM/yyyy'}) {
  if (date == null) return '';
  var formatter = DateFormat(format, locale);
  return formatter.format(date);
}

// ignore: unused_element
String _todayString({String? format = 'dd/MM/yyyy'}) {
  var date = DateTime.now();
  var formatter = DateFormat(format, locale);
  return formatter.format(date);
}

extension DatetTimeConvert on DateTime {
  DateTime get local => toLocal();

  DateTime get utc => toUtc();

  /// return date string formated 'dd/MM/yyyy'
  String? get formatedDateTime =>
      _formatDateTime(this, format: 'dd/MM/yyyy HH:mm:ss a');

  /// return date string formated 'dd/MM/yyyy'
  String get formatedDate => _formatDateTime(this);

  /// return time string formated 'HH:mm'
  String get formatedTime => _formatDateTime(this, format: 'HH:mm');

  /// return datetime string formated. example 'dd/MM/yyyy HH:mm:ss'
  String toFormatedDateTime(String format) =>
      _formatDateTime(this, format: format);
}

extension DatetTimeNullableConvert on DateTime? {
  DateTime? get local => this?.toLocal();

  DateTime? get utc => this?.toUtc();

  /// return date string formated 'dd/MM/yyyy'
  String? get formatedDateTime =>
      _formatDateTime(this, format: 'dd/MM/yyyy HH:mm');

  /// return date string formated 'dd/MM/yyyy'
  String? get formatedDate => _formatDateTime(this);

  /// return time string formated 'HH:mm'
  String? get formatedTime => _formatDateTime(this, format: 'HH:mm');

  /// return datetime string formated. example 'dd/MM/yyyy HH:mm:ss'
  String? toFormatedDateTime(String format) =>
      _formatDateTime(this, format: format);
}

// extension DayOfWeekExtension on DayOfWeek? {
//   bool compare(int weekday) {
//     if (this == DayOfWeek.monday && weekday == 1) return true;
//     if (this == DayOfWeek.tuesday && weekday == 2) return true;
//     if (this == DayOfWeek.wednesday && weekday == 3) return true;
//     if (this == DayOfWeek.thursday && weekday == 4) return true;
//     if (this == DayOfWeek.friday && weekday == 5) return true;
//     if (this == DayOfWeek.saturday && weekday == 6) return true;
//     if (this == DayOfWeek.sunday && weekday == 7) return true;
//     return false;
//   }
// }
