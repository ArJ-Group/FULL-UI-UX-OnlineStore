import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/custom_button.dart';
import 'package:groshop_seller/Components/entry_field.dart';
import 'package:groshop_seller/Locale/locales.dart';

class EditItemPage extends StatefulWidget {
  @override
  _EditItemPageState createState() => _EditItemPageState();
}

class _EditItemPageState extends State<EditItemPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          locale.editItem,
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 130,
                  color: Colors.grey[100],
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey[200]
                                  .withOpacity(index == 0 ? 1 : 0.9),
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.grey[100]
                                          .withOpacity(index == 0 ? 1 : 0.9),
                                      index != 0
                                          ? BlendMode.dst
                                          : BlendMode.clear),
                                  image: AssetImage(
                                      'assets/ProductImages/lady finger.png'),
                                  fit: BoxFit.fill)),
                          child: index == 0
                              ? Icon(
                                  Icons.camera_alt,
                                  color: Theme.of(context).primaryColor,
                                  size: 30,
                                )
                              : SizedBox.shrink(),
                        );
                      }),
                ),
                SizedBox(
                  height: 8,
                ),
                buildHeading(context, locale.itemInfo),
                EntryField(
                  label: locale.productID,
                  labelFontSize: 16,
                  labelFontWeight: FontWeight.w400,
                  controller: TextEditingController()..text = 'TST11414',
                ),
                EntryField(
                  label: locale.productTitle,
                  labelFontSize: 16,
                  labelFontWeight: FontWeight.w400,
                  controller: TextEditingController()
                    ..text = locale.freshLadiesFinger,
                ),
                EntryField(
                  label: locale.itemCategory,
                  labelFontSize: 16,
                  labelFontWeight: FontWeight.w400,
                  controller: TextEditingController()..text = locale.vegetables,
                  suffixIcon: Icons.arrow_drop_down,
                ),
                EntryField(
                  label: locale.itemSubCategory,
                  labelFontSize: 16,
                  labelFontWeight: FontWeight.w400,
                  controller: TextEditingController()
                    ..text = locale.freshvegetables,
                  suffixIcon: Icons.arrow_drop_down,
                ),
                Divider(
                  thickness: 8,
                  color: Colors.grey[100],
                  height: 30,
                ),
                buildHeading(context, locale.description),
                EntryField(
                  maxLines: 4,
                  label: locale.briefYourProduct,
                  labelFontSize: 16,
                  labelFontWeight: FontWeight.w400,
                  controller: TextEditingController()
                    ..text =
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ',
                ),
                Divider(
                  thickness: 8,
                  color: Colors.grey[100],
                  height: 30,
                ),
                buildHeading(context, locale.pricingStock),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                        child: EntryField(
                      label: locale.sellProductPrice,
                      labelFontSize: 16,
                      labelFontWeight: FontWeight.w400,
                      controller: TextEditingController()..text = '\$30.00',
                    )),
                    Expanded(
                        child: EntryField(
                      label: locale.stockAvailability,
                      labelFontSize: 16,
                      labelFontWeight: FontWeight.w400,
                      suffixIcon: Icons.arrow_drop_down,
                      controller: TextEditingController()
                        ..text = locale.inStock,
                    )),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                    onTap: () => Navigator.pop(context), label: locale.update)),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Padding buildHeading(BuildContext context, String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
      child: Text(heading,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              .copyWith(fontWeight: FontWeight.w500)),
    );
  }
}
