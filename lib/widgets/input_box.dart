import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_gpt/data/data.dart';
import 'package:my_gpt/widgets/request_widget.dart';

import '/utils/utils.dart';
import 'widgets.dart';

class InputBox extends ConsumerWidget {
  InputBox({super.key});

  final _controller = TextEditingController();

  void onSubmit(String value, WidgetRef ref) {
    debugPrint("${value}");
    ref
        .read(messagesProvider.notifier)
        .addMessage(value, MessageStatus.request);
    // ref.read(widgetsProvider.notifier).addWidget(RequestWidget(message: value));
    // ref.read(widgetsProvider.notifier).addWidget(Loader(message: value));
    sendPrompt(value, ref);
    _controller.clear();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: context.deviceSize.width * 0.95,
      //height: 80,
      decoration: ShapeDecoration(
        color: const Color(0xFFE7E3D7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: TextField(
        cursorWidth: 3,
        cursorColor: const Color(0xFF251F1C),
        controller: _controller,
        style: const TextStyle(
          color: Color(0xFF251F1C),
          fontSize: 22,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 18,
          ),
          hintText: 'Спросите что угодно..',
          hintStyle: TextStyle(
            color: Color(0x7F251F1C),
            fontSize: 22,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        onSubmitted: (String value) => onSubmit(value, ref),
      ),
    );
  }
}

// child: TextField(
//         controller: _controller,
//         style: const TextStyle(
//           color: Color(0xFF251F1C),
//           fontSize: 25,
//           fontFamily: 'Montserrat',
//           fontWeight: FontWeight.w600,
//           height: 0,
//         ),
//         decoration: const InputDecoration(
//           border: InputBorder.none,
//           focusedBorder: InputBorder.none,
//           enabledBorder: InputBorder.none,
//           errorBorder: InputBorder.none,
//           disabledBorder: InputBorder.none,
//           contentPadding: EdgeInsets.symmetric(
//             horizontal: 15,
//             vertical: 18,
//           ),
//           hintText: 'Спросите что угодно..',
//           hintStyle: TextStyle(
//             color: Color(0x7F251F1C),
//             fontSize: 25,
//             fontFamily: 'Montserrat',
//             fontWeight: FontWeight.w600,
//             height: 0,
//           ),
//         ),
//         onSubmitted: (String value) => onSubmit(value, ref),
//       ),

// @override
// Widget build(BuildContext context) {
//   return Container(
//     width: context.deviceSize.width * 0.95,
//     //height: 80,
//     decoration: ShapeDecoration(
//       color: const Color(0xFFE7E3D7),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//     ),
//     child: const Text(
//       '  Спросите что угодно..',
//       style: TextStyle(
//         color: Color(0x7F251F1C),
//         fontSize: 25,
//         fontFamily: 'Montserrat',
//         fontWeight: FontWeight.w600,
//         height: 2.7,
//       ),
//     ),
//   );
// }
