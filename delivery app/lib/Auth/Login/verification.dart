import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Components/entry_field.dart';
import 'package:groshop_delivery/Locale/locales.dart';

class VerificationPage extends StatefulWidget {
  final VoidCallback onVerificationDone;

  VerificationPage(this.onVerificationDone);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.verification),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        Column(
          children: [
            Spacer(),
            Text(
              locale.pleaseEnterVerificationCodeSentGivenNumber,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            EntryField(
              label: locale.enterVerificationCode + '\n',
              hint: locale.enterVerificationCode,
            ),
            Spacer(flex: 5),
            CustomButton(
              onTap: widget.onVerificationDone,
            ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
