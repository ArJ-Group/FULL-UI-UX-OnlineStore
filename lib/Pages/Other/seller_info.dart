import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Auth/checkout_navigator.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Pages/Search/search_result.dart';

class Product {
  Product(this.image, this.productName, this.productType, this.price);
  String image;
  String productName;
  String productType;
  String price;
}

class SellerInfo extends StatefulWidget {
  @override
  _SellerInfoState createState() => _SellerInfoState();
}

class _SellerInfoState extends State<SellerInfo> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<Product> products = [
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
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.75), BlendMode.dstATop),
                        image: AssetImage('assets/seller1.png'),
                      ),
                    ),
                  ),
                  Positioned.directional(
                    textDirection: Directionality.of(context),
                    top: 50,
                    start: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                  Positioned.directional(
                    textDirection: Directionality.of(context),
                    top: 40,
                    end: 10,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckOutNavigator()));
                        },
                        icon: ImageIcon(AssetImage('assets/ic_cart.png'),
                            color: Colors.white)),
                  ),
                  Positioned.directional(
                    bottom: 20,
                    start: 20,
                    textDirection: TextDirection.ltr,
                    child: Text('Operum Market',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 24,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildGridView(products),
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
