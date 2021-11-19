import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Routes/routes.dart';

class AccountDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Container(
      width: 350,
      child: FadedSlideAnimation(
        Drawer(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/menubg.png'),
              fit: BoxFit.cover,
            )),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 32.0,
                      backgroundImage: AssetImage('assets/imgprofile.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(locale.hey + ',' + '\n' + 'George\nAnderson',
                      style: Theme.of(context).textTheme.headline5),
                ),
                buildListTile(
                    context,
                    Icons.home,
                    locale.home,
                    () => Navigator.popAndPushNamed(
                        context, PageRoutes.homePage)),
                buildListTile(
                    context,
                    Icons.account_balance_wallet,
                    locale.wallet,
                    () => Navigator.popAndPushNamed(
                        context, PageRoutes.walletPage)),
                buildListTile(
                    context,
                    Icons.account_box,
                    locale.myAccount,
                    () => Navigator.popAndPushNamed(
                        context, PageRoutes.editProfilePage)),
                buildListTile(
                    context,
                    Icons.insert_chart,
                    locale.insight,
                    () => Navigator.popAndPushNamed(
                        context, PageRoutes.insightPage)),
                buildListTile(
                    context,
                    Icons.chat,
                    locale.helpCenter,
                    () => Navigator.popAndPushNamed(
                        context, PageRoutes.contactUs)),
                buildListTile(
                    context,
                    Icons.language,
                    locale.language,
                    () => Navigator.popAndPushNamed(
                        context, PageRoutes.languagePage)),
                buildListTile(context, Icons.exit_to_app, locale.logout,
                    () => Phoenix.rebirth(context)),
              ],
            ),
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  ListTile buildListTile(
      BuildContext context, IconData icon, String text, Function onTap) {
    var theme = Theme.of(context);

    return ListTile(
      leading: Icon(icon, color: theme.primaryColor),
      title: Text(text.toUpperCase(),
          style: theme.textTheme.headline6
              .copyWith(fontSize: 18, letterSpacing: 0.8)
              .copyWith(color: theme.scaffoldBackgroundColor)),
      onTap: onTap,
    );
  }
}
