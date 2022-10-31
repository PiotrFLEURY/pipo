import 'package:flutter/material.dart';
import 'package:pipo/presentation/ui/home/views/views.dart';

/// This is the first agnostic widget inside the page
///
/// An agnostic widget is a widget which only purpose is
///   to display data in a view
///
/// It can:
/// - get some data parameters
/// - get some callbacks
/// - references other agnostic widgets
/// - be stateless or stateful
///
/// It should not:
/// - perform business logic
/// - perform data fetching
/// - reference state management
/// - reference any other widget type than agnostic widgets
///
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
