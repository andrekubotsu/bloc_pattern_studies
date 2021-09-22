import 'package:bloc_app_studies/app/app_bloc.dart';
import 'package:bloc_app_studies/app/app_module.dart';
import 'package:bloc_app_studies/app/shared/themes/dark_theme.dart';
import 'package:bloc_app_studies/app/shared/themes/light_theme.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: AppModule.to.bloc<AppBloc>().theme,
        initialData: false,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: snapshot.data! ? darkTheme : lightTheme,
            home: const MyHomePage(),
          );
        });
  }
}
