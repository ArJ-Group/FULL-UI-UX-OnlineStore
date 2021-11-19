import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Routes/routes.dart';

GridView buildGridView(List listName, {bool favourites = false}) {
  return GridView.builder(
      padding: EdgeInsets.all(20.0),
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: listName.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16),
      itemBuilder: (context, index) {
        return buildProductCard(
          context,
          listName[index].image,
          listName[index].productName,
          listName[index].productType,
          listName[index].price,
          listName[index].enabled,
          favourites: favourites,
        );
      });
}

Widget buildProductCard(
  BuildContext context,
  String image,
  String name,
  String type,
  String price,
  bool enabled, {
  bool favourites = false,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, PageRoutes.editItem);
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: FadedScaleAnimation(
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.grey[100].withOpacity(enabled ? 1 : 0.9),
                          enabled ? BlendMode.dst : BlendMode.hue),
                      image: AssetImage(image),
                      fit: BoxFit.fill)),
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
        Text(type, style: TextStyle(color: Colors.grey[500], fontSize: 10)),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(price,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, PageRoutes.reviewsPage);
                },
                child: buildRating(context)),
          ],
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
