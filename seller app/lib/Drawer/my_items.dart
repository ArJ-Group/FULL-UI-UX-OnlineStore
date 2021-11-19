import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/drawer.dart';
import 'package:groshop_seller/Components/grid_view.dart';
import 'package:groshop_seller/Locale/locales.dart';
import 'package:groshop_seller/Routes/routes.dart';

class Product {
  Product(
      this.image, this.productName, this.productType, this.price, this.enabled);
  String image;
  String productName;
  String productType;
  String price;
  bool enabled;
}

class MyItemsPage extends StatefulWidget {
  @override
  _MyItemsPageState createState() => _MyItemsPageState();
}

class _MyItemsPageState extends State<MyItemsPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<Product> products = [
      Product("assets/ProductImages/Garlic.png", locale.freshgarlic, "68 Sold ",
          "\$30.0", true),
      Product("assets/ProductImages/tomato.png", locale.freshredtomatoes,
          "119 Sold", "\$44.0", true),
      Product("assets/ProductImages/onion.png", locale.freshredonion, "98 Sold",
          "\$35.0", false),
      Product("assets/ProductImages/lady finger.png", locale.freshLadiesFinger,
          "124 Sold", "\$32.0", true),
      Product("assets/ProductImages/Potatoes.png", locale.mediumPotatoes,
          "79 Sold", "\$32.0", true),
      Product("assets/ProductImages/Cauliflower.png", locale.cauliFlower,
          "66 Sold", "\$35.0", false),
      Product("assets/ProductImages/lady finger.png", locale.freshLadiesFinger,
          "124 Sold", "\$32.0", true),
      Product("assets/ProductImages/Potatoes.png", locale.mediumPotatoes,
          "79 Sold", "\$32.0", true),
      Product("assets/ProductImages/Cauliflower.png", locale.cauliFlower,
          "66 Sold", "\$35.0", true),
    ];
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text(
          locale.myItems.toUpperCase(),
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: FadedSlideAnimation(
        buildGridView(products),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).scaffoldBackgroundColor,
          size: 32,
        ),
        onPressed: () {
          Navigator.pushNamed(context, PageRoutes.editItem);
        },
      ),
    );
  }
}
