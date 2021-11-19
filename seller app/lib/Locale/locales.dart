import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:groshop_seller/Locale/arabic.dart';
import 'package:groshop_seller/Locale/french.dart';
import 'package:groshop_seller/Locale/indonesian.dart';
import 'package:groshop_seller/Locale/portuguese.dart';
import 'package:groshop_seller/Locale/spanish.dart';
import 'dart:async';
import 'english.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': english(),
    'ar': arabic(),
    'pt': portuguese(),
    'fr': french(),
    'id': indonesian(),
    'es': spanish(),
  };

  String get continueText {
    return _localizedValues[locale.languageCode]['continueText'];
  }

  String get welcomeTo {
    return _localizedValues[locale.languageCode]['welcomeTo'];
  }

  String get selectCountry {
    return _localizedValues[locale.languageCode]['selectCountry'];
  }

  String get phoneNumber {
    return _localizedValues[locale.languageCode]['phoneNumber'];
  }

  String get enterPhoneNumber {
    return _localizedValues[locale.languageCode]['enterPhoneNumber'];
  }

  String get wellSendOTPForVerification {
    return _localizedValues[locale.languageCode]['wellSendOTPForVerification'];
  }

  String get orContinueWith {
    return _localizedValues[locale.languageCode]['orContinueWith'];
  }

  String get fullName {
    return _localizedValues[locale.languageCode]['fullName'];
  }

  String get enterFullName {
    return _localizedValues[locale.languageCode]['enterFullName'];
  }

  String get emailAddress {
    return _localizedValues[locale.languageCode]['emailAddress'];
  }

  String get enterEmailAddress {
    return _localizedValues[locale.languageCode]['enterEmailAddress'];
  }

  String get verification {
    return _localizedValues[locale.languageCode]['verification'];
  }

  String get pleaseEnterVerificationCodeSentGivenNumber {
    return _localizedValues[locale.languageCode]
        ['pleaseEnterVerificationCodeSentGivenNumber'];
  }

  String get enterVerificationCode {
    return _localizedValues[locale.languageCode]['enterVerificationCode'];
  }

  String get register {
    return _localizedValues[locale.languageCode]['register'];
  }

  String get freshredonion {
    return _localizedValues[locale.languageCode]['freshredonion'];
  }

  String get freshredtomatoes {
    return _localizedValues[locale.languageCode]['freshredtomatoes'];
  }

  String get mediumPotatoes {
    return _localizedValues[locale.languageCode]['mediumPotatoes'];
  }

  String get freshLadiesFinger {
    return _localizedValues[locale.languageCode]['freshLadiesFinger'];
  }

  String get freshgarlic {
    return _localizedValues[locale.languageCode]['freshgarlic'];
  }

  String get orderedOn {
    return _localizedValues[locale.languageCode]['orderedOn'];
  }

  String get orderID {
    return _localizedValues[locale.languageCode]['orderID'];
  }

  String get payment {
    return _localizedValues[locale.languageCode]['payment'];
  }

  String get productID {
    return _localizedValues[locale.languageCode]['productID'];
  }

  String get orderStatus {
    return _localizedValues[locale.languageCode]['orderStatus'];
  }

  String get pending {
    return _localizedValues[locale.languageCode]['pending'];
  }

  String get newOrders {
    return _localizedValues[locale.languageCode]['newOrders'];
  }

  String get hey {
    return _localizedValues[locale.languageCode]['hey'];
  }

  String get myOrders {
    return _localizedValues[locale.languageCode]['myOrders'];
  }

  String get insight {
    return _localizedValues[locale.languageCode]['insight'];
  }

  String get myItems {
    return _localizedValues[locale.languageCode]['myItems'];
  }

  String get myEarnings {
    return _localizedValues[locale.languageCode]['myEarnings'];
  }

  String get myProfile {
    return _localizedValues[locale.languageCode]['myProfile'];
  }

  String get helpCentre {
    return _localizedValues[locale.languageCode]['helpCentre'];
  }

  String get language {
    return _localizedValues[locale.languageCode]['language'];
  }

  String get logout {
    return _localizedValues[locale.languageCode]['logout'];
  }

  String get contactUs {
    return _localizedValues[locale.languageCode]['contactUs'];
  }

  String get letUsKnowYourFeedbackQueriesIssueRegardingAppFeatures {
    return _localizedValues[locale.languageCode]
        ['letUsKnowYourFeedbackQueriesIssueRegardingAppFeatures'];
  }

  String get enterYourMessage {
    return _localizedValues[locale.languageCode]['enterYourMessage'];
  }

  String get yourFeedback {
    return _localizedValues[locale.languageCode]['yourFeedback'];
  }

  String get submit {
    return _localizedValues[locale.languageCode]['submit'];
  }

  String get topSellingItems {
    return _localizedValues[locale.languageCode]['topSellingItems'];
  }

  String get orders {
    return _localizedValues[locale.languageCode]['orders'];
  }

  String get revenue {
    return _localizedValues[locale.languageCode]['revenue'];
  }

  String get apparel {
    return _localizedValues[locale.languageCode]['apparel'];
  }

  String get vegetables {
    return _localizedValues[locale.languageCode]['vegetables'];
  }

  String get sold {
    return _localizedValues[locale.languageCode]['sold'];
  }

  String get sendToBank {
    return _localizedValues[locale.languageCode]['sendToBank'];
  }

  String get recentTransactions {
    return _localizedValues[locale.languageCode]['recentTransactions'];
  }

  String get sendTo {
    return _localizedValues[locale.languageCode]['sendTo'];
  }

  String get bank {
    return _localizedValues[locale.languageCode]['bank'];
  }

  String get balance {
    return _localizedValues[locale.languageCode]['balance'];
  }

  String get cauliFlower {
    return _localizedValues[locale.languageCode]['cauliFlower'];
  }

  String get changeCoverImage {
    return _localizedValues[locale.languageCode]['changeCoverImage'];
  }

  String get setProfileInfo {
    return _localizedValues[locale.languageCode]['setProfileInfo'];
  }

  String get sellerName {
    return _localizedValues[locale.languageCode]['sellerName'];
  }

  String get setSellerAddress {
    return _localizedValues[locale.languageCode]['setSellerAddress'];
  }

  String get selectOnMap {
    return _localizedValues[locale.languageCode]['selectOnMap'];
  }

  String get update {
    return _localizedValues[locale.languageCode]['update'];
  }

  String get englishh {
    return _localizedValues[locale.languageCode]['englishh'];
  }

  String get spanishh {
    return _localizedValues[locale.languageCode]['spanishh'];
  }

  String get portuguesee {
    return _localizedValues[locale.languageCode]['portuguesee'];
  }

  String get frenchh {
    return _localizedValues[locale.languageCode]['frenchh'];
  }

  String get arabicc {
    return _localizedValues[locale.languageCode]['arabicc'];
  }

  String get indonesiann {
    return _localizedValues[locale.languageCode]['indonesiann'];
  }

  String get languages {
    return _localizedValues[locale.languageCode]['languages'];
  }

  String get selectPreferredLanguage {
    return _localizedValues[locale.languageCode]['selectPreferredLanguage'];
  }

  String get save {
    return _localizedValues[locale.languageCode]['save'];
  }

  String get addAddress {
    return _localizedValues[locale.languageCode]['addAddress'];
  }

  String get saveAddress {
    return _localizedValues[locale.languageCode]['saveAddress'];
  }

  String get editItem {
    return _localizedValues[locale.languageCode]['editItem'];
  }

  String get itemInfo {
    return _localizedValues[locale.languageCode]['itemInfo'];
  }

  String get productTitle {
    return _localizedValues[locale.languageCode]['productTitle'];
  }

  String get itemCategory {
    return _localizedValues[locale.languageCode]['itemCategory'];
  }

  String get itemSubCategory {
    return _localizedValues[locale.languageCode]['itemSubCategory'];
  }

  String get freshvegetables {
    return _localizedValues[locale.languageCode]['freshvegetables'];
  }

  String get description {
    return _localizedValues[locale.languageCode]['description'];
  }

  String get briefYourProduct {
    return _localizedValues[locale.languageCode]['briefYourProduct'];
  }

  String get pricingStock {
    return _localizedValues[locale.languageCode]['pricingStock'];
  }

  String get sellProductPrice {
    return _localizedValues[locale.languageCode]['sellProductPrice'];
  }

  String get stockAvailability {
    return _localizedValues[locale.languageCode]['stockAvailability'];
  }

  String get inStock {
    return _localizedValues[locale.languageCode]['inStock'];
  }

  String get itemID {
    return _localizedValues[locale.languageCode]['itemID'];
  }

  String get shippingAddress {
    return _localizedValues[locale.languageCode]['shippingAddress'];
  }

  String get readyDispatch {
    return _localizedValues[locale.languageCode]['readyDispatch'];
  }

  String get avgRatings {
    return _localizedValues[locale.languageCode]['avgRatings'];
  }

  String get ratings {
    return _localizedValues[locale.languageCode]['ratings'];
  }

  String get recentReviews {
    return _localizedValues[locale.languageCode]['recentReviews'];
  }

  String get balanceAvailable {
    return _localizedValues[locale.languageCode]['balanceAvailable'];
  }

  String get provideBankDetails {
    return _localizedValues[locale.languageCode]['provideBankDetails'];
  }

  String get bankName {
    return _localizedValues[locale.languageCode]['bankName'];
  }

  String get branchCode {
    return _localizedValues[locale.languageCode]['branchCode'];
  }

  String get accountNumber {
    return _localizedValues[locale.languageCode]['accountNumber'];
  }

  String get enterAmountToTransfer {
    return _localizedValues[locale.languageCode]['enterAmountToTransfer'];
  }

  String get sentOn {
    return _localizedValues[locale.languageCode]['sentOn'];
  }

  String get sentSuccessfully {
    return _localizedValues[locale.languageCode]['sentSuccessfully'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'ar', 'pt', 'fr', 'id', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AppLocalizations.
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
