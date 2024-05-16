import 'dart:convert';

import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'widgets.dart';

class Loader extends StatelessWidget {
  const Loader({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getResponce(message),
      builder: (context, shapshot) {
        if (shapshot.hasData) {
          final responceJson = Map<String, dynamic>.from(
            jsonDecode(
              utf8.decode(shapshot.data!.bodyBytes),
            ),
          );
          final resultText = responceJson['result']?['alternatives']
              .toList()[0]['message']['text']
              .toString();
          return ResponseWidget(message: resultText ?? "sas");
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
