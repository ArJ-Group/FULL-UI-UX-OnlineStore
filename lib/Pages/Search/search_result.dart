import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Pages/Other/category_products.dart';
import 'package:groshop/Pages/Other/product_info.dart';

class Product {
  Product(this.image, this.productName, this.productType, this.price);
  String image;
  String productName;
  String productType;
  String price;
}

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextFormField(
          initialValue: ' ' + locale.fresh,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.black, fontSize: 18),
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey[400],
              ),
              prefixIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey[400],
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1))),
        ),
      ),
      body: FadedSlideAnimation(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CategoryProduct(locale.resultsFound)));
                },
                child: Text(
                  '72 ' + locale.resultsFound,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.grey[400], fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              buildGridView(products),
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

GridView buildGridView(List listName, {bool favourites = false}) {
  return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 20),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listName.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return buildProductCard(
            context,
            listName[index].image,
            listName[index].productName,
            listName[index].productType,
            listName[index].price,
            favourites: favourites);
      });
}

Widget buildProductCard(
    BuildContext context, String image, String name, String type, String price,
    {bool favourites = false}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProductInfo()));
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            FadedScaleAnimation(
              Image.asset(
                image,
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 2.5,
                fit: BoxFit.fill,
              ),
            ),
            favourites
                ? Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
        Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
        Text(type, style: TextStyle(color: Colors.grey[500], fontSize: 10)),
        SizedBox(height: 4),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              buildRating(context),
            ],
          ),
        ),
      ],
    ),
  );
}

Container buildRating(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 1.5, bottom: 1.5, left: 4, right: 3),
    //width: 30,
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Text(
          "4.2",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button.copyWith(fontSize: 10),
        ),
        SizedBox(
          width: 1,
        ),
        Icon(
          Icons.star,
          size: 10,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ],
    ),
  );
}
