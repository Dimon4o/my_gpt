import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:my_gpt/data/data.dart';

void sendPrompt(String input, WidgetRef ref) async {
  String modelUrl = 'gpt://${catalog}/yandexgpt-lite';
  String YaGPTUrl =
      'https://llm.api.cloud.yandex.net/foundationModels/v1/completion';

  final prompt = jsonEncode(
    {
      "modelUri": modelUrl,
      "completionOptions": {
        "stream": false,
        "temperature": 0.6,
        "maxTokens": "2000"
      },
      "messages": [
        {
          "role": "user",
          "text": input,
        },
      ]
    },
  );

  final responce = await http.post(
    Uri.parse(YaGPTUrl),
    headers: {
      "Authorization": "Api-Key ${apiKey}"
    },
    body: prompt,
  );

  final responceJson = Map<String, dynamic>.from(jsonDecode(utf8.decode(responce.bodyBytes)));
  final resultText = responceJson['result']?['alternatives']
      .toList()[0]['message']['text']
      .toString();

  ref.read(messagesProvider.notifier).addMessage(
        resultText ?? 'Ваш запрос не был обработан системой',
        MessageStatus.responce,
      );
}
