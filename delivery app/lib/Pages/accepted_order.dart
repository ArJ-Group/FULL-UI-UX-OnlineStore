import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Pages/new_delivery_task.dart';
import 'package:groshop_delivery/Routes/routes.dart';

class OrderAcceptedPage extends StatefulWidget {
  @override
  _OrderAcceptedPageState createState() => _OrderAcceptedPageState();
}

class _OrderAcceptedPageState extends State<OrderAcceptedPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text(locale.newDeliveryTask),
          automaticallyImplyLeading: false,
          actions: [
            buildCircularButton(
              context,
              Icons.shopping_basket,
              locale.orderInfo,
            ),
          ],
        ),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            Image.asset(
              'assets/Acceptedmap.png',
              width: 500,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      title: Text(
                        locale.distance,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 15),
                      ),
                      subtitle: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: '2.5 km ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.green)),
                          TextSpan(
                              text: '(3 min)',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(fontWeight: FontWeight.w300)),
                        ]),
                      ),
                      trailing: buildCircularButton(
                        context,
                        Icons.navigation,
                        locale.direction,
                      ),
                    ),
                    Divider(
                      height: 5,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.green,
                      ),
                      title: Text(
                        'Operum Market',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '1024, Hemiltone Street, Union Market, USA',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.call,
                        color: Theme.of(context).focusColor,
                        size: 18,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.navigation,
                        color: Colors.green,
                      ),
                      title: Text(
                        'Sam Smith',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'D-32 Deniel Street, Central Residency, USA',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontSize: 12),
                      ),
                    ),
                    CustomButton(
                      onTap: () {
                        Navigator.popAndPushNamed(
                            context, PageRoutes.onWayPage);
                      },
                      label: locale.markAsPicked,
                    ),
                  ],
                ),
              ),
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
