/// string_helper.dart
///
/// @Author: Lê Xuân Mạnh
/// @Date:   2021-11-30 13:54:52
/// @Last Modified by:   Lê Xuân Mạnh
/// @Last Modified time: 2021-11-30 14:03:25
///
import 'package:intl/intl.dart';

extension StringExtension on String {
  String capitalize() {
    return toBeginningOfSentenceCase(this)!;
    // return "${this[0].toUpperCase()}${substring(1)}";
  }
}
