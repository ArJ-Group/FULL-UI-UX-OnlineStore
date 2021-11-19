import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Routes/routes.dart';

class OrderDeliveredPage extends StatefulWidget {
  @override
  _OrderDeliveredPageState createState() => _OrderDeliveredPageState();
}

class _OrderDeliveredPageState extends State<OrderDeliveredPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      body: FadedSlideAnimation(
        Column(
          children: [
            Spacer(
              flex: 2,
            ),
            FadedScaleAnimation(Image.asset(
              'assets/delivery completed.png',
              scale: 3,
            )),
            Spacer(),
            Text(locale.deliveredSuccessfully,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 20)),
            SizedBox(
              height: 6,
            ),
            Text(locale.thankYouForDelivering),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: locale.youDrove + '\n',
                        style: Theme.of(context).textTheme.subtitle2),
                    TextSpan(
                        text: '18 min (6.5 km)\n',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 16, height: 1.7)),
                    TextSpan(
                      text: locale.viewOrderInfo,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 17,
                            color: Theme.of(context).primaryColor,
                            height: 1.5,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.popAndPushNamed(
                              context, PageRoutes.orderHistoryPage);
                        },
                    ),
                  ])),
                  Spacer(),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: locale.yourEarning + '\n',
                        style: Theme.of(context).textTheme.subtitle2),
                    TextSpan(
                        text: '\$ 8.50\n',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 16, height: 1.7)),
                    TextSpan(
                        text: locale.viewEarnings,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 17,
                            color: Theme.of(context).primaryColor,
                            height: 1.5)),
                  ])),
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              onTap: () {
                Navigator.pop(context);
              },
              label: locale.backToHome,
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
