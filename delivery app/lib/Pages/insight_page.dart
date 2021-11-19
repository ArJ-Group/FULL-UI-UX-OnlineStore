import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Pages/drawer.dart';
import 'package:groshop_delivery/Pages/home_page.dart';
import 'package:groshop_delivery/Routes/routes.dart';

class InsightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      drawer: AccountDrawer(),
      appBar: AppBar(
        title: Text(locale.insight.toUpperCase()),
        titleSpacing: 0.0,
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(locale.today),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ],
      ),
      body: FadedSlideAnimation(
        Insight(),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class Insight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var theme = Theme.of(context);
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Divider(thickness: 6.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildRowChild(theme, '64', locale.orders),
              buildRowChild(theme, '68 km', locale.ride),
              buildRowChild(theme, '\$302.50', locale.earnings),
            ],
          ),
        ),
        Divider(thickness: 6),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.earnings.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Center(
                child: FadedScaleAnimation(
                  Image(
                    color: Theme.of(context).primaryColor,
                    colorBlendMode: BlendMode.color,
                    image: AssetImage("assets/del_earnings.png"),
                    height: 220.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, PageRoutes.walletPage),
                child: Center(
                  child: Text(
                    locale.viewAllTrans.toUpperCase(),
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 6),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.orders.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Center(
                child: FadedScaleAnimation(
                  Image(
                    color: Theme.of(context).primaryColor,
                    colorBlendMode: BlendMode.color,
                    image: AssetImage("assets/del_orders.png"),
                    height: 200.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
