import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Pages/Search/search_result.dart';
import 'package:groshop/Theme/colors.dart';

class Product {
  Product(this.image, this.productName, this.productType, this.price);
  String image;
  String productName;
  String productType;
  String price;
}

class MyWishList extends StatefulWidget {
  @override
  _MyWishListState createState() => _MyWishListState();
}

class _MyWishListState extends State<MyWishList> {
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
          "Operum England ", "\$32.0"),
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
      appBar: AppBar(
        title: Text(
          locale.myWishList.toUpperCase(),
          style: TextStyle(color: kMainTextColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: FadedSlideAnimation(
        ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: buildGridView(products, favourites: true),
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
