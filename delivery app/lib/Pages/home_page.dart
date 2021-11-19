import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Pages/drawer.dart';
import 'package:groshop_delivery/Routes/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOffline = true;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: !isOffline
          ? FloatingActionButton(
              foregroundColor: Colors.white,
              child: Icon(
                Icons.format_list_bulleted,
                size: 28,
              ),
              onPressed: () {
                Navigator.pushNamed(context, PageRoutes.newDeliveryPage);
              })
          : SizedBox.shrink(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: AppBar(
            title: Text(
              isOffline
                  ? locale.youReOffline.toUpperCase()
                  : locale.youReOnline.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isOffline = !isOffline;
                      });
                    },
                    child: FadedScaleAnimation(
                      AnimatedContainer(
                        duration: Duration(milliseconds: 250),
                        width: 104,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          isOffline
                              ? locale.goOnline.toUpperCase()
                              : locale.goOffline.toUpperCase(),
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: theme.scaffoldBackgroundColor),
                        ),
                        decoration: BoxDecoration(
                          color: isOffline
                              ? theme.primaryColor
                              : Color(0xffff452c),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      drawer: AccountDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/mapdelivery.png"),
                      fit: BoxFit.cover))),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: isOffline ? 92 : 0,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  buildRowChild(theme, '64', locale.orders),
                  buildRowChild(theme, '68 km', locale.ride),
                  buildRowChild(theme, '\$302.50', locale.earnings),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Column buildRowChild(ThemeData theme, String text1, String text2,
    {CrossAxisAlignment alignment}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: alignment ?? CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        text1,
        style: theme.textTheme.headline6.copyWith(color: theme.backgroundColor),
      ),
      SizedBox(
        height: 8.0,
      ),
      Text(
        text2,
        style: theme.textTheme.subtitle2,
      ),
    ],
  );
}
