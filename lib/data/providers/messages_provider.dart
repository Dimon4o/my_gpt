import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/models.dart';

class MessagesNotifier extends StateNotifier<Messages> {
  MessagesNotifier(super.state);

  void addMessage(String message, MessageStatus status) {
    final newMessages = state.messages;
    newMessages.add(Message(text: message, status: status));
    state = state.copyWith(messages: newMessages);
  }
}

final messagesProvider = StateNotifierProvider<MessagesNotifier, Messages>(
  ((ref) => MessagesNotifier(Messages(messages: []))),
);
