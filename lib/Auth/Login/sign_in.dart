import 'package:animation_wrappers/Animations/faded_translation_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Auth/login_navigator.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Components/entry_field.dart';
import 'package:groshop/Locale/locales.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      body: FadedSlideAnimation(
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 0, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  locale.welcomeTo,
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                ),
                Spacer(
                  flex: 2,
                ),
                Image.asset(
                  "assets/userrlogo.png",
                  scale: 2.5,
                  height: 150,
                ),
                Spacer(
                  flex: 4,
                ),
                EntryField(
                  label: locale.selectCountry,
                  hint: locale.selectCountry,
                  suffixIcon: (Icons.arrow_drop_down),
                ),
                EntryField(
                  label: locale.phoneNumber,
                  hint: locale.enterPhoneNumber,
                ),
                Spacer(),
                CustomButton(
                  onTap: () =>
                      Navigator.pushNamed(context, SignInRoutes.signUp),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  locale.wellSendOTPForVerification,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  locale.orContinueWith,
                  textAlign: TextAlign.center,
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        label: 'Facebook',
                        color: Color(0xff3b45c1),
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        label: 'Google',
                        color: Color(0xffff452c),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Expanded buildFBGoogleButton(BuildContext context, String text, Color color) {
    return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () => Navigator.pushNamed(context, SignInRoutes.signUp),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(text,
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  )),
            )));
  }
}
