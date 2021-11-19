import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Auth/checkout_navigator.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Pages/Other/reviews.dart';
import 'package:groshop/Pages/Other/seller_info.dart';
import 'package:groshop/Pages/Search/search_result.dart';

import 'category_products.dart';

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
    List<Product> sellerProducts = [
      Product("assets/ProductImages/onion.png", locale.freshRedOnios,
          "Pajeroma", "\$30.0"),
      Product("assets/ProductImages/tomato.png", locale.freshRedTomatoes,
          "Lecoil Eeva", "\$44.0"),
      Product("assets/ProductImages/Potatoes.png", locale.mediumPotatoes,
          "Pajeroma", "\$29.0"),
      Product("assets/ProductImages/lady finger.png", locale.freshLadiesFinger,
          "Operum England", "\$32.0"),
      Product("assets/ProductImages/Garlic.png", locale.freshGarlic, "Pajeroma",
          "\$30.0"),
      Product("assets/ProductImages/Cauliflower.png", locale.cauliFlower,
          "Calvis Dino", "\$35.0"),
      Product("assets/ProductImages/lady finger.png", locale.freshLadiesFinger,
          "Operum England", "\$32.0"),
      Product("assets/ProductImages/Garlic.png", locale.freshGarlic, "Pajeroma",
          "\$30.0"),
      Product("assets/ProductImages/Cauliflower.png", locale.cauliFlower,
          "Calvis Dino", "\$35.0"),
    ];

    return Scaffold(
      body: FadedSlideAnimation(
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  //Container(),
                  FadedScaleAnimation(
                    Image.asset("assets/ProductImages/lady finger.png",
                        fit: BoxFit.fill),
                  ),
                  Positioned.directional(
                      textDirection: Directionality.of(context),
                      top: 40,
                      start: 5,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios))),
                  Positioned.directional(
                      textDirection: Directionality.of(context),
                      top: 40,
                      end: 5,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckOutNavigator()));
                          },
                          icon: ImageIcon(AssetImage('assets/ic_cart.png')))),
                  Positioned.directional(
                      textDirection: Directionality.of(context),
                      top: 90,
                      end: 5,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_border))),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          "Operum Market",
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.grey[600],
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        //SizedBox(width: 180,),
                        buildRating(context),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text("\$32.0",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20)),
                        Spacer(),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Reviews()));
                            },
                            child: Text(
                              locale.readAllReviews + ' ',
                              style: TextStyle(
                                  color: Color(
                                    0xffa9a9a9,
                                  ),
                                  fontSize: 13),
                            )),
                        Icon(Icons.arrow_forward_ios,
                            size: 10, color: Color(0xffa9a9a9)),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur dip isicing elit, sed do eiusmod tempor inci didunt ut labore et dolore magna etroaliqua. Ut enim ad minim veniam.",
                      softWrap: true,
                      style: TextStyle(
                        color: Color(0xff585858),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CheckOutNavigator())),
                height: 60,
                iconGap: 12,
                prefixIcon: ImageIcon(
                  AssetImage('assets/ic_cart.png'),
                  color: Colors.white,
                  size: 16,
                ),
                label: locale.addToCart,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SellerInfo()));
                  },
                  child: RichText(
                    text: TextSpan(
                        text: locale.moreBy + ' ',
                        style: TextStyle(
                            color: Theme.of(context).backgroundColor,
                            fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: locale.seller,
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ]),
                  ),
                ),
                trailing: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CategoryProduct(locale.viewAll)));
                    },
                    child: Text(
                      locale.viewAll,
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: buildGridView(sellerProducts),
              ),
            ],
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
