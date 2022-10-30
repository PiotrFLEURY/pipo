import 'package:flutter/material.dart';
import 'package:pipo/presentation/colors.dart';

class PipoCard extends StatelessWidget {
  final String backgroundImage;
  final String userPicture;
  final String pipoText;
  final String userName;
  final VoidCallback? onCardTap;
  final VoidCallback? onUserTap;

  const PipoCard({
    super.key,
    required this.backgroundImage,
    required this.userPicture,
    required this.pipoText,
    required this.userName,
    this.onCardTap,
    this.onUserTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(8.0),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          color: AppColors.dark.withAlpha(200),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                InkWell(
                  onTap: onCardTap,
                  child: Text(
                    pipoText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      color: AppColors.light,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
