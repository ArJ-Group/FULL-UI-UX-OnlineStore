import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Components/entry_field.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Theme/colors.dart';

class AddAddressPage extends StatefulWidget {
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          locale.addAddress,
          style: TextStyle(fontSize: 18, color: kMainTextColor),
        ),
        actions: [
          FlatButton(
              onPressed: () {},
              child: Text(
                locale.continueText,
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 18),
              ))
        ],
      ),
      body: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset('assets/map.png', fit: BoxFit.fitWidth),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.check_box,
                        size: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: EntryField(
                      horizontalPadding: 0,
                      labelFontSize: 15,
                      labelFontWeight: FontWeight.w400,
                      label: locale.addressTitle,
                      controller: TextEditingController()..text = locale.home,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 12, right: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on, size: 20),
                  SizedBox(width: 15),
                  Text(
                    '1124, Patestine Street, Jackson Tower,\nNear City Garden, New York, USA',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            CustomButton(
              onTap: () => Navigator.pop(context),
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
