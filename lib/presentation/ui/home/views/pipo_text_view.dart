import 'package:flutter/material.dart';
import 'package:pipo/presentation/style/colors.dart';

class PipoTextView extends StatelessWidget {
  const PipoTextView({
    Key? key,
    required this.onTextTap,
    required this.pipoText,
  }) : super(key: key);

  final VoidCallback? onTextTap;
  final String pipoText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTextTap,
      child: Text(
        pipoText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          color: AppColors.light,
        ),
      ),
    );
  }
}
