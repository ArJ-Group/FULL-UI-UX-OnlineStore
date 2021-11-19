import 'package:animation_wrappers/Animations/faded_translation_animation.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/drawer.dart';
import 'package:groshop_seller/Locale/locales.dart';
import 'package:groshop_seller/Routes/routes.dart';

class RecentTransaction {
  RecentTransaction(this.img, this.name, this.sold, this.price, this.color);
  String img;
  String name;
  String sold;
  String price;
  Color color;
}

class MyEarningsPage extends StatefulWidget {
  @override
  _MyEarningsPageState createState() => _MyEarningsPageState();
}

class _MyEarningsPageState extends State<MyEarningsPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<RecentTransaction> transactions = [
      RecentTransaction('assets/ProductImages/lady finger.png',
          locale.freshLadiesFinger, '124', '30.00', Colors.green),
      RecentTransaction('assets/ProductImages/tomato.png',
          locale.freshredtomatoes, '119', '39.00', Colors.green),
      RecentTransaction('assets/ProductImages/logobank.png', locale.sendToBank,
          '124', '29.00', Colors.red),
      RecentTransaction('assets/ProductImages/Potatoes.png',
          locale.mediumPotatoes, '124', '32.00', Colors.green),
      RecentTransaction('assets/ProductImages/onion.png', locale.freshredonion,
          '124', '32.00', Colors.green),
      RecentTransaction('assets/ProductImages/Garlic.png', locale.freshgarlic,
          '124', '32.00', Colors.green),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: buildDrawer(context),
      body: FadedSlideAnimation(
        Stack(
          children: [
            Image.asset(
              'assets/menubg.png',
              height: 180,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: AppBar(
                title: Text(
                  locale.myEarnings,
                  style: TextStyle(
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
                centerTitle: true,
                iconTheme: new IconThemeData(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 180),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/charts.png',
                      fit: BoxFit.fill,
                    ),
                    height: 200,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 0.0, // soften the shadow
                          spreadRadius: 0.5, //extend the shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 16),
                    child: Text(
                      locale.recentTransactions,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(vertical: 0),
                      shrinkWrap: true,
                      itemCount: transactions.length,
                      itemBuilder: (context, index) {
                        return buildTransactionCard(
                            context,
                            transactions[index].img,
                            transactions[index].name,
                            transactions[index].sold,
                            transactions[index].price,
                            transactions[index].color,
                            index);
                      }),
                ],
              ),
            ),
            Positioned.directional(
              textDirection: Directionality.of(context),
              top: 130,
              start: 0,
              end: 0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 0.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Spacer(),
                      Container(
                        height: 80,
                        child: Center(
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: locale.revenue + '\n',
                                    style:
                                        Theme.of(context).textTheme.subtitle2),
                                TextSpan(
                                    text: '\$ 5.9k',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(height: 2)),
                              ])),
                        ),
                      ),
                      Spacer(),
                      VerticalDivider(
                        color: Colors.grey[400],
                        width: 20,
                      ),
                      Spacer(),
                      Container(
                        height: 80,
                        child: Center(
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: locale.balance + '\n',
                                    style:
                                        Theme.of(context).textTheme.subtitle2),
                                TextSpan(
                                    text: '\$ 2.3k',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(height: 2)),
                              ])),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, PageRoutes.sendToBank);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.horizontal(
                                  end: Radius.circular(8)),
                              color: Theme.of(context).primaryColor),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 16),
                          height: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(locale.sendTo,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300)),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(locale.bank,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Colors.white, size: 14),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Container buildTransactionCard(BuildContext context, String img, String name,
      String id, String price, Color color, index) {
    var locale = AppLocalizations.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FadedScaleAnimation(
                    Image.asset(
                      img,
                      fit: BoxFit.fill,
                      height: 70,
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.subtitle1,
                      children: <TextSpan>[
                    TextSpan(text: '$name\n'),
                    TextSpan(
                        text: index != 2
                            ? locale.orderedOn + ' 24 Jun, 10:49\n\n'
                            : locale.sentOn + ' 24 Jun 10:49\n\n',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(fontSize: 12, height: 1.3)),
                    TextSpan(
                        text: index != 2 ? locale.orderID + ' ' : '',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(height: 0.5)),
                    TextSpan(
                        text: index != 2 ? '224154' : locale.sentSuccessfully,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                            height: 0.5, fontWeight: FontWeight.w500)),
                  ])),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Text(
              '\n\n\$$price',
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: color, fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
