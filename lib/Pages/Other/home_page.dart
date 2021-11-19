import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Auth/checkout_navigator.dart';
import 'package:groshop/Components/drawer.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Pages/Search/search_history.dart';
import 'package:groshop/Pages/Search/search_result.dart';

import 'category_products.dart';

class Category {
  Category(this.image, this.name);
  String image;
  String name;
}

class Product {
  Product(this.image, this.productName, this.productType, this.price);
  String image;
  String productName;
  String productType;
  String price;
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _current = 0;
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    final List<Category> categories = [
      Category('assets/CategoryImages/Vegetables.png', locale.vegetables),
      Category('assets/CategoryImages/Bakery.png', locale.bakery),
      Category('assets/CategoryImages/Foodgrains.png', locale.foodgrain),
      Category('assets/CategoryImages/Household.png', locale.household),
    ];
    List<String> carouselImages = [
      'assets/HomeBanner/Banner0.png',
      'assets/HomeBanner/Banner1.png',
      'assets/HomeBanner/Banner2.png',
    ];
    final List<Product> products = [
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
    ];
    final List<Product> products2 = [
      Product("assets/ProductImages/Cauliflower.png", locale.cauliFlower,
          "Calvis Dino", "\$35.0"),
      Product("assets/ProductImages/Garlic.png", locale.freshGarlic, "Pajeroma",
          "\$30.0"),
      Product("assets/ProductImages/lady finger.png", locale.freshLadiesFinger,
          "Operum England", "\$32.0"),
      Product("assets/ProductImages/Potatoes.png", locale.mediumPotatoes,
          "Pajeroma", "\$29.0"),
      Product("assets/ProductImages/tomato.png", locale.freshRedTomatoes,
          "Lecoil Eeva", "\$44.0"),
      Product("assets/ProductImages/onion.png", locale.freshRedOnios,
          "Pajeroma", "\$3.0"),
    ];
    return Stack(
      children: [
        Column(
          children: [
            Image.asset('assets/header.png'),
            Expanded(child: Container(color: Colors.white)),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          drawer: buildDrawer(context),
          body: SafeArea(
            child: Stack(
              children: [
                SizedBox(height: 12.0),
                Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: AppBar(
                        actions: [
                          IconButton(
                            icon: ImageIcon(AssetImage(
                              'assets/ic_cart.png',
                            )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CheckOutNavigator()));
                            },
                          ),
                        ],
                        title: TextFormField(
                          readOnly: true,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchHistory()));
                          },
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.black, fontSize: 18),
                          decoration: InputDecoration(
                              hintText: locale.searchOnGroShop,
                              hintStyle: Theme.of(context).textTheme.subtitle2,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    Container(
                      height: 96,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return buildCategoryRow(index, context, categories);
                          }),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 196),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      SizedBox(height: 16.0),
                      Stack(
                        children: [
                          CarouselSlider(
                            items: carouselImages.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                        child: FadedScaleAnimation(
                                            Image.asset(i))),
                                  );
                                },
                              );
                            }).toList(),
                            options: CarouselOptions(
                                autoPlay: true,
                                viewportFraction: 1.0,
                                enlargeCenterPage: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                          ),
                          Positioned.directional(
                            textDirection: Directionality.of(context),
                            start: 20.0,
                            bottom: 0.0,
                            child: Row(
                              children: carouselImages.map((i) {
                                int index = carouselImages.indexOf(i);
                                return Container(
                                  width: 12.0,
                                  height: 3.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: _current == index
                                        ? Colors.white /*.withOpacity(0.9)*/
                                        : Colors.white.withOpacity(0.5),
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      buildCompleteVerticalList(
                          locale, context, products, locale.fresharrived),
                      buildCompleteVerticalList(
                          locale, context, products2, locale.featuredProducts),
                      buildCompleteVerticalList(
                          locale, context, products2, locale.discountedItems),
                      buildCompleteVerticalList(
                          locale, context, products2, locale.topRated),
                      buildCompleteVerticalList(
                          locale, context, products, locale.fresharrived),
                      buildCompleteVerticalList(
                          locale, context, products2, locale.featuredProducts),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column buildCompleteVerticalList(AppLocalizations locale,
      BuildContext context, List<Product> products, String heading) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(heading,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        buildList(products),
      ],
    );
  }
}

Container buildList(List<Product> products) {
  return Container(
    height: 240,
    child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5,
              child: buildProductCard(
                  context,
                  products[index].image,
                  products[index].productName,
                  products[index].productType,
                  products[index].price),
            ),
          );
        }),
  );
}

GestureDetector buildCategoryRow(
    int index, BuildContext context, List categories) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryProduct(categories[index].name)));
    },
    child: FadedScaleAnimation(
      Container(
        margin: EdgeInsets.only(left: 16),
        padding: EdgeInsets.all(10),
        width: 96,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(categories[index].image), fit: BoxFit.fill)),
      ),
    ),
  );
}
