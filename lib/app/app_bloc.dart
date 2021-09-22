import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';

class AppBloc extends BlocBase {
  bool isDark = false;

  final StreamController<bool> _theme$ = StreamController();
  Stream<bool> get theme => _theme$.stream;

  changeTheme() {
    isDark = !isDark;
    _theme$.add(isDark);
  }

  // remember to dispose (memory)
  @override
  dispose() {
    _theme$.close();
    super.dispose();
  }
}
