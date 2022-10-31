import 'package:flutter/material.dart';
import 'package:pipo/presentation/ui/home/views/views.dart';

class PipoCard extends StatelessWidget {
  final String background;
  final PipoTextView text;
  final UserInfos userInfos;

  const PipoCard({
    super.key,
    required this.background,
    required this.text,
    required this.userInfos,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(8.0),
      clipBehavior: Clip.antiAlias,
      child: CardBackground(
        backgroundImage: background,
        child: TransparentColor(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: CardContent(
              text: text,
              userInfos: userInfos,
            ),
          ),
        ),
      ),
    );
  }
}
