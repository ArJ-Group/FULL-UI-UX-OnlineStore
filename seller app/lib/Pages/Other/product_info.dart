import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/custom_button.dart';
import 'package:groshop_seller/Locale/locales.dart';

class Product {
  Product(this.image, this.productName, this.productType, this.price);
  String image;
  String productName;
  String productType;
  String price;
}

class ProductInfo extends StatefulWidget {
  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    return Scaffold(
      body: FadedSlideAnimation(
        Column(
          children: [
            Stack(
              children: [
                FadedScaleAnimation(Image.asset(
                    "assets/ProductImages/lady finger.png",
                    fit: BoxFit.fill)),
                Positioned.directional(
                    textDirection: Directionality.of(context),
                    top: 40,
                    start: 5,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios))),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Text(locale.orderedOn + ' 24 Jun 11:40',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(fontSize: 13)),
                        Spacer(),
                        Text(locale.orderID + ' 224154',
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                  ),
                  Text(
                    locale.freshLadiesFinger,
                    style: Theme.of(context).textTheme.headline3.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        locale.itemID + ' TST11414',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(fontSize: 13),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text("\$32.0",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20)),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          text: 'Qnt. ',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(fontSize: 20),
                          children: <TextSpan>[
                            TextSpan(
                                text: '1',
                                style: TextStyle(
                                    color: Theme.of(context).backgroundColor,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[100],
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(locale.shippingAddress,
                      style: Theme.of(context).textTheme.subtitle2),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Samantha Smith\n\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                '1124, Patestine Street, Jackson Tower,\nNear City Garden, New York, USA\n\n',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 15)),
                        TextSpan(
                            text: '+1 987 654 321',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              onTap: () => Navigator.pop(context),
              height: 60,
              iconGap: 12,
              label: locale.readyDispatch,
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
