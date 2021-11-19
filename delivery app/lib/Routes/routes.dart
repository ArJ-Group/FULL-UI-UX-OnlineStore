import 'package:flutter/material.dart';
import 'package:groshop_delivery/Pages/accepted_order.dart';
import 'package:groshop_delivery/Pages/addtobank_page.dart';
import 'package:groshop_delivery/Pages/edit_profile.dart';
import 'package:groshop_delivery/Pages/home_page.dart';
import 'package:groshop_delivery/Pages/insight_page.dart';
import 'package:groshop_delivery/Pages/language_page.dart';
import 'package:groshop_delivery/Pages/new_delivery_task.dart';
import 'package:groshop_delivery/Pages/on_way.dart';
import 'package:groshop_delivery/Pages/order_delivered.dart';
import 'package:groshop_delivery/Pages/order_history.dart';
import 'package:groshop_delivery/Pages/contact_us.dart';
import 'package:groshop_delivery/Pages/wallet_page.dart';

class PageRoutes {
  static const String homePage = 'home_page';
  static const String insightPage = 'insight_page';
  static const String languagePage = 'language_page';
  static const String walletPage = 'wallet_page';
  static const String addToBank = 'add_to_bank';
  static const String editProfilePage = 'edit_profile';
  static const String orderHistoryPage = 'order_history';
  static const String orderDeliveredPage = 'order_delivered';
  static const String newDeliveryPage = 'new_delivery';
  static const String contactUs = 'contact_us';
  static const String orderAcceptedPage = 'order_accepted';
  static const String onWayPage = 'on_way';

  Map<String, WidgetBuilder> routes() {
    return {
      homePage: (context) => HomePage(),
      insightPage: (context) => InsightPage(),
      languagePage: (context) => LanguagePage(),
      walletPage: (context) => WalletPage(),
      addToBank: (context) => AddToBank(),
      editProfilePage: (context) => EditProfilePage(),
      orderHistoryPage: (context)=> OrderHistoryPage(),
      orderDeliveredPage: (context)=> OrderDeliveredPage(),
      newDeliveryPage: (context)=> NewDeliveryPage(),
      contactUs: (context)=> ContactUsPage(),
      orderAcceptedPage: (context)=> OrderAcceptedPage(),
      onWayPage: (context)=> OnWayPage(),
    };
  }
}
