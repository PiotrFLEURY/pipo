import 'package:flutter/material.dart';

class GaleryButtonBar extends StatelessWidget {
  final VoidCallback onBack;
  final VoidCallback onForward;
  final String text;
  const GaleryButtonBar({
    super.key,
    required this.onBack,
    required this.onForward,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: onBack,
          icon: const Icon(Icons.arrow_back),
        ),
        Text(text),
        IconButton(
          onPressed: onForward,
          icon: const Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
