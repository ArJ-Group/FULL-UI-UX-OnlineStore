import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Auth/login_navigator.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Components/entry_field.dart';
import 'package:groshop_delivery/Locale/locales.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: FadedSlideAnimation(
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Text(
                  locale.welcomeTo,
                  style: theme.textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Image.asset(
                  "assets/logo_delivery.png",
                  height: 160,
                ),
                Spacer(flex: 2),
                EntryField(
                  label: locale.selectCountry,
                  hint: locale.selectCountry,
                  suffixIcon: (Icons.arrow_drop_down),
                ),
                EntryField(
                  label: locale.phoneNumber,
                  hint: locale.enterPhoneNumber,
                ),
                CustomButton(
                  onTap: () =>
                      Navigator.pushNamed(context, SignInRoutes.signUp),
                ),
                Text(
                  '\n' + locale.wellSendOTPForVerification,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.subtitle2
                      .copyWith(color: theme.hintColor),
                ),
                Spacer(),
                Text(
                  locale.orContinueWith,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline6,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        label: 'Facebook',
                        color: Color(0xff3b45c1),
                        onTap: () =>
                            Navigator.pushNamed(context, SignInRoutes.signUp),
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        label: 'Google',
                        color: Color(0xffff452c),
                        onTap: () =>
                            Navigator.pushNamed(context, SignInRoutes.signUp),
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
}
