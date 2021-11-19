import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Components/entry_field.dart';
import 'package:groshop_delivery/Locale/locales.dart';

import '../login_navigator.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.register),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            EntryField(
              label: locale.fullName,
              hint: locale.enterFullName,
            ),
            EntryField(
              label: locale.emailAddress,
              hint: locale.enterEmailAddress,
            ),
            EntryField(
              label: locale.selectCountry,
              hint: locale.selectCountry,
              suffixIcon: Icons.arrow_drop_down,
            ),
            EntryField(
              label: locale.phoneNumber,
              hint: locale.enterPhoneNumber,
            ),
            Spacer(
              flex: 5,
            ),
            CustomButton(
              onTap: () =>
                  Navigator.pushNamed(context, SignInRoutes.verification),
            )
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
