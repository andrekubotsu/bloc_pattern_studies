import 'package:bloc_app_studies/app/app_bloc.dart';
import 'package:bloc_app_studies/app/app_widget.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [Bloc((i) => AppBloc())];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => const MyApp();

  static Inject get to => Inject<AppModule>.of();
}
