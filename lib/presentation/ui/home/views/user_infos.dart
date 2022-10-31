import 'package:flutter/material.dart';
import 'package:pipo/presentation/style/colors.dart';

class UserInfos extends StatelessWidget {
  const UserInfos({
    Key? key,
    required this.onUserTap,
    required this.userPicture,
    required this.userName,
  }) : super(key: key);

  final VoidCallback? onUserTap;
  final String userPicture;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onUserTap,
      child: Row(
        children: [
          Hero(
            tag: 'user_picture',
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                userPicture,
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Hero(
            tag: 'user_name',
            child: Text(
              userName,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.light,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
