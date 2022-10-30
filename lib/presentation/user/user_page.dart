import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipo/cubits/cubits.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/presentation/colors.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, User?>(builder: (context, user) {
      if (user == null) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.light,
          foregroundColor: AppColors.dark,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: 'user_picture',
                child: CircleAvatar(
                  backgroundImage: NetworkImage(user.picture),
                  radius: 96.0,
                ),
              ),
              Hero(
                tag: 'user_name',
                child: Text(
                  user.fullName,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Text(
                'User email: ${user.email}',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      );
    });
  }
}
