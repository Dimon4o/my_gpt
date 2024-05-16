import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/models.dart';

class WidgetsNotifier extends StateNotifier<Widgets> {
  WidgetsNotifier(super.state);

  void addWidget(Widget widget) {
    final newWidgets = state.widgets;
    newWidgets.add(widget);
    state = state.copyWith(widgets: newWidgets);
  }
}

final widgetsProvider = StateNotifierProvider<WidgetsNotifier, Widgets>(
  ((ref) => WidgetsNotifier(Widgets(widgets: []))),
);
