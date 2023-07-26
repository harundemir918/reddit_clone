part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class InitThemeEvent extends ThemeEvent {
  @override
  List<Object?> get props => [];
}

class SwitchThemeEvent extends ThemeEvent {
  @override
  List<Object?> get props => [];
}
