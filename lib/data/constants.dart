import 'data.dart';

const String apiKey = '';
const String catalog = '';

List<Message> sampleMessages = [
  Message(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
    status: MessageStatus.request,
  ),
  Message(
    text: 'Повторите ваш запрос или попробуйте найти в нём ошибку',
    status: MessageStatus.responce,
  ),
];