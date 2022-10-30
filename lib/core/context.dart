import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pipo/data/repositories/random_user_repository_impl.dart';
import 'package:pipo/data/sources/pipotron_api.dart';
import 'package:pipo/data/repositories/pipo_repository_impl.dart';
import 'package:pipo/data/sources/random_user_api.dart';

class AppContext extends InheritedWidget {
  final Map<Type, dynamic> _beans = {};

  AppContext({
    super.key,
    required super.child,
  }) {
    _initialize();
  }

  _initialize() {
    _beans[Dio] = Dio();
    _beans[PipotronApi] = PipotronApi(get());
    _beans[RandomUserApi] = RandomUserApi(get());
    _beans[PipoRepositoryImpl] = PipoRepositoryImpl(get());
    _beans[RandomUserRepositoryImpl] = RandomUserRepositoryImpl(get());
  }

  T get<T>() {
    final bean = _beans[T];
    return bean ?? findInheritedType();
  }

  T findInheritedType<T>() {
    for (final bean in _beans.values) {
      if (bean is T) {
        return bean;
      }
    }
    throw Exception('Bean not found');
  }

  static AppContext of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<AppContext>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
