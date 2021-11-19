import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:groshop_seller/Auth/login_navigator.dart';
import 'package:groshop_seller/Locale/locales.dart';
import 'package:groshop_seller/Routes/routes.dart';
import 'package:groshop_seller/Theme/style.dart';
import 'package:groshop_seller/language_cubit.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LanguageCubit>(
      create: (context) => LanguageCubit(),
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (_, locale) {
          return MaterialApp(
            localizationsDelegates: [
              const AppLocalizationsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en'),
              const Locale('ar'),
              const Locale('pt'),
              const Locale('fr'),
              const Locale('id'),
              const Locale('es'),
            ],
            locale: locale,
            theme: appTheme,
            home: SignInNavigator(),
            routes: PageRoutes().routes(),
          );
        },
      ),
    );
  }
}
