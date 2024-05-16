import 'data.dart';

const String apiKey = 'AQVN1085MlWgbv3eDYPP7Sz-T10eWvugQoxB3_y9';
const String catalog = 'b1gurgp55vd0p00anfpc';

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