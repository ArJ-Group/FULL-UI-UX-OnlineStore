import 'package:flutter/material.dart';
import 'package:groshop/Auth/Login/sign_in.dart';
import 'package:groshop/Auth/Login/sign_up.dart';
import 'package:groshop/Auth/Login/verification.dart';
import 'package:groshop/Routes/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SignInRoutes {
  static const String signInRoot = 'signIn/';
  static const String signUp = 'signUp';
  static const String verification = 'verification';
}

class SignInNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKey.currentState.canPop();
        if (canPop) {
          navigatorKey.currentState.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: SignInRoutes.signInRoot,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case SignInRoutes.signInRoot:
              builder = (BuildContext _) => SignIn();
              break;
            case SignInRoutes.signUp:
              builder = (BuildContext _) => SignUp();
              break;
            case SignInRoutes.verification:
              builder = (BuildContext _) => VerificationPage(() {
                    Navigator.popAndPushNamed(context, PageRoutes.homePage);
                  });
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
