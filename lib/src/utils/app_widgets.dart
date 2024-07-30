/// app_widgets.dart
///
/// @Author: Lê Xuân Mạnh
/// @Date:   2021-09-27 20:34:01
/// @Last Modified by:   Lê Xuân Mạnh
/// @Last Modified time: 2022-05-26 16:53:06
///

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../widgets/loading_indicator.dart';

const String icAppLogoNoText = './lib/images/loctroi.png';

Widget loadingLinearWidgetMaker(
    {String? label, String? semanticsLabel, String? semanticsValue}) {
  return Column(children: [
    LinearProgressIndicator(
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ),
    if (!label.isEmptyOrNull) Text(label!)
  ]);
}

Widget loadingWidgetMaker() {
  return LogoCircularProgressIndicator(
      strokeWidth: 3,
      logo: Image.asset(icAppLogoNoText,
          package: 'ltg_dashboard', width: 32, height: 32));
}

Widget loadingClipedWidgetMaker() {
  return Container(
    alignment: Alignment.center,
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 4,
      margin: const EdgeInsets.all(4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      child: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.all(8.0),
        child: LogoCircularProgressIndicator(
            logo: Image.asset(icAppLogoNoText,
                package: 'ltg_dashboard', width: 32, height: 32),
            strokeWidth: 3),
      ),
    ),
  );
}

class AppBarGradientWidget extends StatelessWidget {
  final Widget? child;

  const AppBarGradientWidget({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
            // Colors.black12,
            // primaryColor1,
            // Color(0xFF185fc2),
            // primaryColor3,
            // primaryColor4
          ],
        ),
      ),
      child: child,
    );
  }
}

Widget textWithIcon({
  required Widget title,
  required Widget leading,
  Widget? subTitle,
  TextStyle? style,
}) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      children: [
        WidgetSpan(
            alignment: PlaceholderAlignment.top, child: leading, style: style),
        WidgetSpan(
          child: Container(
            padding: const EdgeInsets.only(left: 3.0),
            child: title,
          ),
          style: style,
        ),
        if (subTitle != null) WidgetSpan(child: subTitle, style: style),
      ],
    ),
  );
}

// class ChatMessageWidget1 extends StatelessWidget {
//   const ChatMessageWidget1({
//     Key? key,
//     required this.isMe,
//     required this.data,
//   }) : super(key: key);

//   final bool isMe;
//   final EAMessageModel data;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment:
//           isMe.validate() ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
//           margin: isMe.validate()
//               ? EdgeInsets.only(
//                   top: 3.0,
//                   bottom: 3.0,
//                   right: 0,
//                   left: (500 * 0.25).toDouble())
//               : EdgeInsets.only(
//                   top: 4.0,
//                   bottom: 4.0,
//                   left: 0,
//                   right: (500 * 0.25).toDouble()),
//           decoration: BoxDecoration(
//             color: !isMe ? primaryColor1 : white,
//             boxShadow: defaultBoxShadow(),
//             borderRadius: isMe.validate()
//                 ? BorderRadius.only(
//                     bottomLeft: Radius.circular(10),
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10))
//                 : BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     bottomRight: Radius.circular(10),
//                     topRight: Radius.circular(10)),
//             border: Border.all(
//                 color:
//                     isMe ? Theme.of(context).dividerColor : Colors.transparent),
//           ),
//           child: Column(
//             crossAxisAlignment:
//                 isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Flexible(
//                   child: Text(data.msg!,
//                       style: primaryTextStyle(
//                           color: !isMe ? white : textPrimaryColor))),
//               Text(data.time!,
//                   style: secondaryTextStyle(
//                       color: !isMe ? white : textSecondaryColor, size: 12))
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
