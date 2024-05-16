import 'package:flutter/material.dart';

class Widgets {
  final List<Widget> widgets;
  Widgets({
    required this.widgets,
  });

  Widgets copyWith({
    List<Widget>? widgets,
  }) {
    return Widgets(
      widgets: widgets ?? this.widgets,
    );
  }
}
