import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_gpt/data/data.dart';
import 'package:my_gpt/utils/utils.dart';

import 'widgets/widgets.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  Widget messageboxSelector(Message message) {
    switch (message.status) {
      case MessageStatus.request:
        return RequestWidget(message: message.text);
      case MessageStatus.responce:
        return ResponseWidget(message: message.text);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(messagesProvider).messages.reversed.toList();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Expanded(
                child: SizedBox(
                  width: context.deviceSize.width * 0.95,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Stack(
                      children: [
                        Container(color: const Color(0xFFC8B1A0)),
                        Center(
                          child: SvgPicture.asset(
                            'assets/icons/MyGPT.svg',
                            width: context.deviceSize.width * 0.6,
                          ),
                        ),
                        ListView.builder(
                          itemCount: messages.length,
                          physics: const BouncingScrollPhysics(),
                          reverse: true,
                          itemBuilder: (BuildContext context, int index) =>
                              messageboxSelector(
                            messages[index],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              InputBox(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
