import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(ThemeData.light()) {
    on<InitThemeEvent>((event, emit) async {
      final isDark = await Utils.isDark();
      if (isDark) {
        emit(ThemeData.dark());
      } else {
        emit(ThemeData.light());
      }
    });

    on<SwitchThemeEvent>((event, emit) async {
      final isDark = state == ThemeData.dark();
      emit(isDark ? ThemeData.light() : ThemeData.dark());
      Utils.switchTheme(!isDark);
    });
  }
}
