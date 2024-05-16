import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:my_gpt/data/data.dart';

Future<Response> getResponce(String input) {
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

  final response = http.post(
    Uri.parse(YaGPTUrl),
    headers: {
      "Authorization": "Api-Key ${apiKey}"
    },
    body: prompt,
  );

  return response;
}
