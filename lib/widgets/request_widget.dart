import 'package:flutter/material.dart';
import 'package:my_gpt/utils/utils.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(
          left: message.length > 20
              ? context.deviceSize.width * 0.16
              : context.deviceSize.width * 0.46,
        ),
        width: context.deviceSize.width * 0.6,
        //height: 100,
        decoration: ShapeDecoration(
          color: AppColors.myMessage,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(5),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            message,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.bordersColor,
            ),
          ),
        ),
      ),
    );
  }
}
