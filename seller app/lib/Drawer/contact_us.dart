import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/custom_button.dart';
import 'package:groshop_seller/Components/drawer.dart';
import 'package:groshop_seller/Components/entry_field.dart';
import 'package:groshop_seller/Locale/locales.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text(
          locale.contactUs,
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FadedScaleAnimation(
              Image.asset(
                'assets/Logos/logo_seller.png',
                scale: 3,
                height: 280,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Text(
                locale.letUsKnowYourFeedbackQueriesIssueRegardingAppFeatures,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontSize: 19),
              ),
            ),
            Spacer(),
            EntryField(
                labelFontSize: 16,
                controller: TextEditingController()..text = 'Operum Market',
                labelFontWeight: FontWeight.w400,
                label: locale.fullName),
            EntryField(
                controller: TextEditingController()..text = '+1 987 654 321',
                labelFontSize: 16,
                labelFontWeight: FontWeight.w400,
                label: locale.phoneNumber),
            EntryField(
                hintStyle: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 18.3,
                    fontWeight: FontWeight.w400),
                hint: locale.enterYourMessage,
                labelFontSize: 16,
                labelFontWeight: FontWeight.w400,
                label: locale.yourFeedback),
            Spacer(),
            CustomButton(
                onTap: () => Navigator.pop(context), label: locale.submit)
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
