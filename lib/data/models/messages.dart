import 'models.dart';

class Messages {
  final List<Message> messages;
  Messages({
    required this.messages,
  });

  Messages copyWith({
    List<Message>? messages,
  }) {
    return Messages(
      messages: messages ?? this.messages,
    );
  }
}
