import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Components/entry_field.dart';
import 'package:groshop_delivery/Locale/locales.dart';

class AddToBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadedSlideAnimation(
        Add(),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 170.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  locale.bankInfo.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 15),
                ),
              ),
              EntryField(
                labelColor: Theme.of(context).disabledColor,
                textCapitalization: TextCapitalization.words,
                label: locale.accountHolderName.toUpperCase(),
                labelFontSize: 13,
                labelFontWeight: FontWeight.w500,
                controller: TextEditingController()..text = 'George Anderson',
              ),
              EntryField(
                labelColor: Theme.of(context).disabledColor,
                labelFontSize: 13,
                labelFontWeight: FontWeight.w500,
                textCapitalization: TextCapitalization.words,
                label: locale.bankName.toUpperCase(),
                controller: TextEditingController()
                  ..text = 'HBNC Bank of New York',
              ),
              EntryField(
                labelColor: Theme.of(context).disabledColor,
                labelFontSize: 13,
                labelFontWeight: FontWeight.w500,
                textCapitalization: TextCapitalization.none,
                label: locale.branchCode.toUpperCase(),
                controller: TextEditingController()..text = '+1 987 654 3210',
              ),
              EntryField(
                labelColor: Theme.of(context).disabledColor,
                labelFontSize: 13,
                labelFontWeight: FontWeight.w500,
                textCapitalization: TextCapitalization.none,
                label: locale.accountNumber.toUpperCase(),
                controller: TextEditingController()
                  ..text = '4321 4567 6789 8901',
              ),
              Divider(
                color: Theme.of(context).dividerColor,
                thickness: 8.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: EntryField(
                  labelColor: Theme.of(context).disabledColor,
                  labelFontSize: 13,
                  labelFontWeight: FontWeight.w500,
                  textCapitalization: TextCapitalization.words,
                  label: locale.enterAmountToTransfer.toUpperCase(),
                  controller: TextEditingController()..text = '\$ 500',
                ),
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/headerr.png',
          height: 200,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        size: 20,
                      )),
                  Text(locale.sendToBank,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: locale.availableBalance + '\n'.toUpperCase(),
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        height: 2.0)),
                TextSpan(
                    text: '\$ 520.50',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor)),
              ])),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomButton(
            label: locale.sendToBank,
            onTap: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}
