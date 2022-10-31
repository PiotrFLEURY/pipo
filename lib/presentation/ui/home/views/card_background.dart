import 'package:flutter/material.dart';

class CardBackground extends StatelessWidget {
  final String backgroundImage;
  final Widget child;
  const CardBackground({
    super.key,
    required this.backgroundImage,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: backgroundImage.isEmpty
            ? null
            : DecorationImage(
                image: NetworkImage(backgroundImage),
                fit: BoxFit.cover,
              ),
      ),
      child: child,
    );
  }
}
