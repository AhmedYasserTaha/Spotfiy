import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) {
    emit(themeMode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    try {
      return ThemeMode.values[json['theme']
          as int]; // تحويل الرقم إلى ThemeMode
    } catch (e) {
      return ThemeMode.system; // لو حصل خطأ، رجّع الوضع الافتراضي
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'theme': state.index}; // تخزين كـ int لأنه أسهل في التخزين
  }
}
