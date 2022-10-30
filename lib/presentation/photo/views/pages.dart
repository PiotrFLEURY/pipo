import 'package:flutter/material.dart';

class GaleryPages extends StatelessWidget {
  final PageController pageController;
  final List<String> backgrounds;
  const GaleryPages({
    super.key,
    required this.pageController,
    required this.backgrounds,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: backgrounds.length,
      itemBuilder: (context, index) {
        return Image.network(
          key: ValueKey('background_$index'),
          backgrounds[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
