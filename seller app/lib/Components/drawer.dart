import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:groshop_seller/Locale/locales.dart';
import 'package:groshop_seller/Routes/routes.dart';

Drawer buildDrawer(BuildContext context) {
  var locale = AppLocalizations.of(context);
  return Drawer(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/menubg2.png'), fit: BoxFit.cover)),
      child: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 54.0),
              child: Text(
                locale.hey + ',\nOperum\nMarket',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 22, letterSpacing: 0.5),
              ),
            ),
            buildListTile(context, Icons.shopping_cart, locale.myOrders,
                PageRoutes.newOrdersDrawer),
            buildListTile(context, Icons.insert_chart, locale.insight,
                PageRoutes.insight),
            buildListTile(context, Icons.assignment_returned, locale.myItems,
                PageRoutes.myItemsPage),
            buildListTile(context, Icons.account_balance_wallet,
                locale.myEarnings, PageRoutes.myEarnings),
            buildListTile(context, Icons.account_box, locale.myProfile,
                PageRoutes.myProfile),
            buildListTile(
                context, Icons.chat, locale.helpCentre, PageRoutes.contactUs),
            buildListTile(context, Icons.language, locale.language,
                PageRoutes.chooseLanguage),
            ListTile(
              onTap: () {
                Phoenix.rebirth(context);
              },
              leading: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                locale.logout,
                style: TextStyle(letterSpacing: 2),
              ),
            ),
            Spacer(),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    ),
  );
}

ListTile buildListTile(
    BuildContext context, IconData icon, String title, var onPress) {
  return ListTile(
    onTap: () {
      Navigator.popAndPushNamed(context, onPress);
    },
    leading: Icon(
      icon,
      color: Theme.of(context).primaryColor,
    ),
    title: Text(
      title,
      style: TextStyle(letterSpacing: 2),
    ),
  );
}
