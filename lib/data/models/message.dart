enum MessageStatus { request, responce }

class Message {
  final String text;
  final MessageStatus status;
  Message({
    required this.text,
    required this.status,
  });
}
