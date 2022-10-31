import 'package:flutter/material.dart';
import 'package:pipo/presentation/style/colors.dart';

class TransparentColor extends StatelessWidget {
  final Widget child;
  const TransparentColor({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      color: AppColors.dark.withAlpha(200),
      child: child,
    );
  }
}
