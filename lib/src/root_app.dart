import 'package:akrilii/bloc/navigator_bloc.dart';
import 'package:akrilii/core/color_app.dart';
import 'package:akrilii/core/localizations_app.dart';
import 'package:akrilii/core/size_app.dart';
import 'package:akrilii/functions/remove_splash_screen.dart';
import 'package:akrilii/screens/onboding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  void initState() {
    super.initState();
    removeSplashScreen();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeApp().init(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return BlocProvider(
          create: (context) => NavigatorBarBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Akilii',
            supportedLocales: const [Locale('en'), Locale('ar')],
            localizationsDelegates: const [
              LocalizationsApp.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null &&
                    deviceLocale.languageCode == locale.languageCode) {
                  return deviceLocale;
                }
              }

              return supportedLocales.first;
            },
            theme: ThemeData(
              primaryColor: ColorApp.primaryColor,
              appBarTheme:
                  AppBarTheme(backgroundColor: ColorApp.backgroundColor),
              scaffoldBackgroundColor: ColorApp.backgroundColor,
              colorScheme: ColorScheme.dark(
                primary: ColorApp.auxiliaryColor,
              ),
              useMaterial3: true,
            ),
            home: child,
          ),
        );
      },
      child: const OnbordingScreen(),
    );
  }
}
