import 'package:animation_wrappers/Animations/faded_translation_animation.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Routes/routes.dart';

class NewDeliveryPage extends StatefulWidget {
  @override
  _NewDeliveryPageState createState() => _NewDeliveryPageState();
}

class _NewDeliveryPageState extends State<NewDeliveryPage> {
  bool acceptDelivery = false;
  bool markAsPicked = false;

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
            acceptDelivery
                ? buildCircularButton(
                    context, Icons.shopping_basket, locale.orderInfo)
                : SizedBox.shrink(),
          ],
        ),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            Image.asset(
              'assets/map1.png',
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
                              text: '16.5 km ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.green)),
                          TextSpan(
                              text: '(20 min)',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(fontWeight: FontWeight.w300)),
                        ]),
                      ),
                      trailing: acceptDelivery
                          ? buildCircularButton(
                              context, Icons.navigation, locale.direction)
                          : null,
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
                      trailing: acceptDelivery
                          ? Icon(
                              Icons.call,
                              color: Colors.black,
                              size: 18,
                            )
                          : null,
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
                              context, PageRoutes.orderAcceptedPage);
                        },
                        label: locale.acceptDelivery),
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

Container buildCircularButton(
    BuildContext context, IconData icon, String text) {
  return Container(
//    duration: Duration (seconds: 2),
    width: 120,
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    decoration: BoxDecoration(
      color: Theme.of(context).dividerColor,
      border: Border.all(width: 0.2),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Color(0xFF39c526),
        ),
        Spacer(),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF39c526),
          ),
        ),
        Spacer(),
      ],
    ),
  );
}
