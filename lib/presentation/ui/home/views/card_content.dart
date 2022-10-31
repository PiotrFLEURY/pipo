import 'package:flutter/material.dart';
import 'package:pipo/presentation/ui/home/views/views.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.text,
    required this.userInfos,
  }) : super(key: key);

  final PipoTextView text;
  final UserInfos userInfos;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Spacer(),
        text,
        const Spacer(),
        userInfos,
      ],
    );
  }
}
