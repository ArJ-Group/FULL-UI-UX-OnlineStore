import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/drawer.dart';
import 'package:groshop_seller/Locale/locales.dart';
import 'package:groshop_seller/Pages/Other/product_info.dart';

class NewOrderItem {
  NewOrderItem(this.img, this.name, this.buyer);
  String img;
  String name;
  String buyer;
}

class NewOrdersDrawer extends StatefulWidget {
  @override
  _NewOrdersDrawerState createState() => _NewOrdersDrawerState();
}

class _NewOrdersDrawerState extends State<NewOrdersDrawer> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<NewOrderItem> newOrders = [
      NewOrderItem('assets/ProductImages/lady finger.png',
          locale.freshLadiesFinger, 'Samantha Smith | New York, USA'),
      NewOrderItem('assets/ProductImages/onion.png', locale.freshredonion,
          'Emili Williamson | Hemilton, USA'),
      NewOrderItem('assets/ProductImages/tomato.png', locale.freshredtomatoes,
          'George Taylor | New York, USA'),
      NewOrderItem('assets/ProductImages/lady finger.png',
          locale.freshLadiesFinger, 'Samantha Smith | New York, USA'),
      NewOrderItem('assets/ProductImages/onion.png', locale.freshredonion,
          'Samantha Smith | New York, USA'),
      NewOrderItem('assets/ProductImages/tomato.png', locale.freshredtomatoes,
          'Emili Williamson | Hemilton, USA'),
      NewOrderItem('assets/ProductImages/Potatoes.png', locale.mediumPotatoes,
          'George Taylor | New York, USA'),
      NewOrderItem('assets/ProductImages/Garlic.png', locale.freshgarlic,
          'Samantha Smith | New York, USA'),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: buildDrawer(context),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            locale.newOrders,
            style: TextStyle(
              color: Theme.of(context).backgroundColor,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                ListView.builder(
                    padding: EdgeInsets.only(bottom: 20),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: newOrders.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return buildCompleteCard(context, newOrders[index].img,
                          newOrders[index].name, newOrders[index].buyer);
                    }),
              ],
            ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  CircleAvatar buildStatusIcon(IconData icon, {bool disabled = false}) =>
      CircleAvatar(
          backgroundColor: !disabled ? Color(0xff222e3e) : Colors.grey[300],
          child: Icon(
            icon,
            size: 20,
            color: !disabled
                ? Theme.of(context).primaryColor
                : Theme.of(context).scaffoldBackgroundColor,
          ));

  GestureDetector buildCompleteCard(
      BuildContext context, String img, String item, String category) {
    var locale = AppLocalizations.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductInfo()));
      },
      child: Card(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        margin: EdgeInsets.only(left: 14, right: 14, top: 14),
        color: Colors.white,
        elevation: 1,
        child: Column(
          children: [
            buildItem(context, img, item, category),
            buildOrderInfoRow(context, '\$30.50', 'TST11414', locale.pending),
          ],
        ),
      ),
    );
  }

  Container buildOrderInfoRow(
      BuildContext context, String price, String prodID, String orderStatus,
      {double borderRadius = 8}) {
    var locale = AppLocalizations.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.vertical(bottom: Radius.circular(borderRadius)),
        color: Colors.grey[100],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 12),
      child: Row(
        children: [
          buildGreyColumn(context, locale.payment, price),
          Spacer(),
          buildGreyColumn(context, locale.productID, prodID),
          Spacer(),
          buildGreyColumn(context, 'Qty', '1'),
          Spacer(),
          buildGreyColumn(context, locale.orderStatus, orderStatus,
              text2Color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }

  Padding buildItem(
      BuildContext context, String img, String name, String category) {
    var locale = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadedScaleAnimation(Image.asset(img, height: 70))),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 6),
                  Text(
                    category,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  Text(locale.orderedOn + ' 24 Jun, 11:40',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(fontSize: 10.5)),
                ],
              ),
            ],
          ),
          Positioned.directional(
            textDirection: Directionality.of(context),
            end: 0,
            bottom: 0,
            child: Text(
              locale.orderID + ' 2254126',
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(fontSize: 10.5),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildAmountRow(String name, String price,
      {FontWeight fontWeight = FontWeight.w500}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: fontWeight),
          ),
          Spacer(),
          Text(
            price,
            style: TextStyle(fontWeight: fontWeight),
          ),
        ],
      ),
    );
  }

  Column buildGreyColumn(BuildContext context, String text1, String text2,
      {Color text2Color = Colors.black}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1,
            style:
                Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 11)),
        SizedBox(height: 8),
        LimitedBox(
          maxWidth: 100,
          child: Text(text2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: text2Color)),
        ),
      ],
    );
  }
}
