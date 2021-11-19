import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Auth/checkout_navigator.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Locale/locales.dart';

class Address {
  Address(this.heading, this.address);
  String heading;
  String address;
//  int _radioValue;
}

class AddressPage extends StatefulWidget {
  final VoidCallback onBackButtonPressed;

  AddressPage(this.onBackButtonPressed);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  List<int> radioButtons = [0, -1, -1];

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<Address> addresses = [
      Address(locale.home,
          '1124, Patestine Street, Jackson Tower,\nNear City Garden, New York, USA'),
      Address(locale.office,
          '1124, Patestine Street, Jackson Tower,\nNear City Garden, New York, USA'),
      Address(locale.other,
          '1124, Patestine Street, Jackson Tower,\nNear City Garden, New York, USA'),
    ];

    return Scaffold(
      body: FadedSlideAnimation(
        Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/header.png',
                  height: 200,
                  fit: BoxFit.fitHeight,
                ),
                IconButton(
                    padding: EdgeInsets.only(top: 70),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      widget.onBackButtonPressed();
                    }),
                Positioned.directional(
                    textDirection: Directionality.of(context),
                    top: 70,
                    start: MediaQuery.of(context).size.width / 3.5,
                    child: Text(
                      locale.selectAddress,
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    )),
                Positioned.directional(
                  top: 130,
                  width: MediaQuery.of(context).size.width,
                  textDirection: Directionality.of(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
//                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        '......',
                        style: TextStyle(fontSize: 40, color: Colors.grey[400]),
                      ),
                      Icon(
                        Icons.credit_card,
                        color: Colors.grey[400],
                      ),
                      Text(
                        '......',
                        style: TextStyle(fontSize: 40, color: Colors.grey[400]),
                      ),
                      Image.asset(
                        'assets/ic_check.png',
                        height: 22,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                )
              ],
            ),
            ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Radio(
                            value: index,
                            groupValue: radioButtons[index],
                            onChanged: (int value) {
                              setState(() {
                                for (int i = 0; i < radioButtons.length; i++) {
                                  radioButtons[i] = -1;
                                }
                                radioButtons[index] = value;
                              });
                            }),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              addresses[index].heading,
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.black),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              addresses[index].address,
                              softWrap: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
            Spacer(),
            CustomButton(
              onTap: () =>
                  Navigator.pushNamed(context, CheckOutRoutes.paymentMode),
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
