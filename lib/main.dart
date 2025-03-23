import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopy_app/core/configs/themes/app_theme.dart';
import 'package:shopy_app/core/service/service_lecator.dart';
import 'package:shopy_app/firebase_options.dart';
import 'package:shopy_app/presentation/auth/page/sign_in_sign_up_page.dart';
import 'package:shopy_app/presentation/choose_mode/cubit/theme_cubit.dart';
import 'package:shopy_app/presentation/choose_mode/pages/choose_mode_page.dart';
import 'package:shopy_app/presentation/splash/page/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        kIsWeb
            ? HydratedStorageDirectory.web
            : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initializeDependance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, mode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: mode,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            home: const ChooseModePage(), // 🚀 عرض شاشة الـ Splash أولًا
          );
        },
      ),
    );
  }
}
