import 'package:flutter/material.dart';
import 'package:pipo/presentation/ui/home/views/views.dart';

class HomeContent extends StatelessWidget {
  final String background;
  final String pipo;
  final String userName;
  final String userPicture;
  final VoidCallback onUserTap;
  final VoidCallback onTextTap;

  const HomeContent({
    super.key,
    required this.background,
    required this.pipo,
    required this.userName,
    required this.userPicture,
    required this.onUserTap,
    required this.onTextTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PipoCard(
          background: background,
          text: PipoTextView(
            onTextTap: onTextTap,
            pipoText: pipo,
          ),
          userInfos: UserInfos(
            onUserTap: onUserTap,
            userPicture: userPicture,
            userName: userName,
          ),
        ),
      ),
    );
  }
}
