import 'package:flutter/material.dart';
import 'package:pipo/presentation/ui/photo/views/button_bar.dart';
import 'package:pipo/presentation/ui/photo/views/pages.dart';

class Galery extends StatefulWidget {
  final List<String> backgrounds;
  const Galery({
    super.key,
    required this.backgrounds,
  });

  @override
  State<Galery> createState() => _GaleryState();
}

class _GaleryState extends State<Galery> {
  var _page = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    if (widget.backgrounds.isEmpty) {
      return const Center(
        child: Text('No background found'),
      );
    }

    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: GaleryPages(
              pageController: pageController,
              backgrounds: widget.backgrounds,
            ),
          ),
        ),
        GaleryButtonBar(
          onBack: () => _changePage(-1),
          onForward: () => _changePage(1),
          text: '${_page + 1} / ${widget.backgrounds.length}',
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  void _changePage(int step) {
    if (step < 0 && _page == 0) {
      return;
    }
    if (step > 0 && _page == widget.backgrounds.length - 1) {
      return;
    }
    setState(() {
      _page += step;
      pageController.animateToPage(
        _page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }
}
