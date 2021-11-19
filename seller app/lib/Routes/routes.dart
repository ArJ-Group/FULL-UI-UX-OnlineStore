import 'package:flutter/material.dart';
import 'package:groshop_seller/Drawer/contact_us.dart';
import 'package:groshop_seller/Drawer/insight.dart';
import 'package:groshop_seller/Drawer/my_earnings.dart';
import 'package:groshop_seller/Drawer/my_items.dart';
import 'package:groshop_seller/Drawer/new_orders_drawer.dart';
import 'package:groshop_seller/Drawer/profile.dart';
import 'package:groshop_seller/Drawer/select_language.dart';
import 'package:groshop_seller/Pages/Login/sign_up.dart';
import 'package:groshop_seller/Pages/Other/add_address.dart';
import 'package:groshop_seller/Pages/Other/edit_item.dart';
import 'package:groshop_seller/Pages/Other/reviews.dart';
import 'package:groshop_seller/Pages/Other/send_to_bank.dart';

class PageRoutes {
  static const String signUp = 'sign_up';
  static const String newOrdersDrawer = 'new_orders_drawer';
  static const String editItem = 'edit_item';
  static const String reviewsPage = 'reviews_page';
  static const String sendToBank = 'send_to_bank';
  static const String addAddress = 'add_address';
  static const String insight = 'insight';
  static const String myItemsPage = 'my_item_page';
  static const String myEarnings = 'my_earnings';
  static const String myProfile = 'my_profile';
  static const String contactUs = 'contact_us';
  static const String chooseLanguage = 'choose_language';

  Map<String, WidgetBuilder> routes() {
    return {
      signUp: (context) => SignUp(),
      newOrdersDrawer: (context) => NewOrdersDrawer(),
      editItem: (context) => EditItemPage(),
      reviewsPage: (context) => Reviews(),
      sendToBank: (context) => SendToBank(),
      addAddress: (context) => AddAddress(),
      insight: (context) => InsightPage(),
      myItemsPage: (context) => MyItemsPage(),
      myEarnings: (context) => MyEarningsPage(),
      myProfile: (context) => MyProfile(),
      contactUs: (context) => ContactUsPage(),
      chooseLanguage: (context) => ChooseLanguage(),
    };
  }
}
