import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/utils.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(right: context.deviceSize.width * 0.73),
        height: 33,
        decoration: ShapeDecoration(
          color: AppColors.gptMessage.withOpacity(0.6),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Center(
            child: LoadingAnimationWidget.waveDots(
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
