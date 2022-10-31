import 'package:flutter/material.dart';
import 'package:pipo/presentation/ui/home/views/pipo_card.dart';

class HomeContent extends StatelessWidget {
  final String background;
  final String pipo;
  final String userPicture;
  final String userName;
  final VoidCallback onUserTap;
  final VoidCallback onCardTap;

  const HomeContent({
    super.key,
    required this.background,
    required this.pipo,
    required this.userPicture,
    required this.userName,
    required this.onUserTap,
    required this.onCardTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PipoCard(
          backgroundImage: background,
          pipoText: pipo,
          userPicture: userPicture,
          userName: userName,
          onUserTap: onUserTap,
          onCardTap: onCardTap,
        ),
      ),
    );
  }
}
