import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Components/entry_field.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Pages/drawer.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      drawer: AccountDrawer(),
      appBar: AppBar(
        title: Text(locale.contactUs),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 3),
            Image.asset(
              'assets/logo.png',
              height: 130,
              alignment: Alignment.center,
            ),
            Spacer(flex: 5),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Text(
                locale.letUsKnowYourFeedbackQueriesIssueRegardingAppFeatures,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 19),
              ),
            ),
            Spacer(flex: 2),
            EntryField(
                labelFontSize: 16,
                controller: TextEditingController()..text = 'Samantha Smith',
                labelFontWeight: FontWeight.w400,
                label: locale.fullName),
            EntryField(
                controller: TextEditingController()..text = '+1 987 654 321',
                labelFontSize: 16,
                labelFontWeight: FontWeight.w400,
                label: locale.phoneNumber),
            EntryField(
                hintStyle: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontSize: 18.3, fontWeight: FontWeight.w400),
                hint: locale.enterYourMessage,
                labelFontSize: 16,
                labelFontWeight: FontWeight.w400,
                label: locale.yourFeedback),
            Spacer(flex: 2),
            CustomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                label: locale.submit)
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
