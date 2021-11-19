import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'dart:async';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';
import 'indonesian.dart';
import 'portuguese.dart';
import 'spanish.dart';

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

  String get hey {
    return _localizedValues[locale.languageCode]['hey'];
  }

  String get home {
    return _localizedValues[locale.languageCode]['home'];
  }

  String get myProfile {
    return _localizedValues[locale.languageCode]['myProfile'];
  }

  String get myOrders {
    return _localizedValues[locale.languageCode]['myOrders'];
  }

  String get offers {
    return _localizedValues[locale.languageCode]['offers'];
  }

  String get myWishList {
    return _localizedValues[locale.languageCode]['myWishList'];
  }

  String get aboutUs {
    return _localizedValues[locale.languageCode]['aboutUs'];
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

  String get office {
    return _localizedValues[locale.languageCode]['office'];
  }

  String get other {
    return _localizedValues[locale.languageCode]['other'];
  }

  String get selectAddress {
    return _localizedValues[locale.languageCode]['selectAddress'];
  }

  String get yourOrderHasBeenPlacedSuccessfully {
    return _localizedValues[locale.languageCode]
        ['yourOrderHasBeenPlacedSuccessfully'];
  }

  String get youCanCheckYourOrderProcessInMyOrdersSection {
    return _localizedValues[locale.languageCode]
        ['youCanCheckYourOrderProcessInMyOrdersSection'];
  }

  String get continueShopping {
    return _localizedValues[locale.languageCode]['continueShopping'];
  }

  String get jonathanfarms {
    return _localizedValues[locale.languageCode]['jonathanfarms '];
  }

  String get greencityfarm {
    return _localizedValues[locale.languageCode]['greencityfarm'];
  }

  String get operummarket {
    return _localizedValues[locale.languageCode]['operummarket'];
  }

  String get cashOnDelivery {
    return _localizedValues[locale.languageCode]['cashOnDelivery'];
  }

  String get dispatched {
    return _localizedValues[locale.languageCode]['dispatched'];
  }

  String get placed {
    return _localizedValues[locale.languageCode]['placed'];
  }

  String get packing {
    return _localizedValues[locale.languageCode]['packing'];
  }

  String get track {
    return _localizedValues[locale.languageCode]['track'];
  }

  String get delivered {
    return _localizedValues[locale.languageCode]['delivered'];
  }

  String get orderedItems {
    return _localizedValues[locale.languageCode]['orderedItems'];
  }

  String get deliveryFee {
    return _localizedValues[locale.languageCode]['deliveryFee'];
  }

  String get promoCode {
    return _localizedValues[locale.languageCode]['promoCode'];
  }

  String get amountToPay {
    return _localizedValues[locale.languageCode]['amountToPay'];
  }

  String get payment {
    return _localizedValues[locale.languageCode]['payment'];
  }

  String get paymentMode {
    return _localizedValues[locale.languageCode]['paymentMode'];
  }

  String get orderStatus {
    return _localizedValues[locale.languageCode]['orderStatus'];
  }

  String get orderedOn {
    return _localizedValues[locale.languageCode]['orderedOn'];
  }

  String get orderID {
    return _localizedValues[locale.languageCode]['orderID'];
  }

  String get cards {
    return _localizedValues[locale.languageCode]['cards'];
  }

  String get creditCard {
    return _localizedValues[locale.languageCode]['creditCard'];
  }

  String get debitCard {
    return _localizedValues[locale.languageCode]['debitCard'];
  }

  String get cash {
    return _localizedValues[locale.languageCode]['cash'];
  }

  String get otherMethods {
    return _localizedValues[locale.languageCode]['otherMethods'];
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

  String get register {
    return _localizedValues[locale.languageCode]['register'];
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

  String get yourCart {
    return _localizedValues[locale.languageCode]['yourCart'];
  }

  String get addPromocode {
    return _localizedValues[locale.languageCode]['addPromocode'];
  }

  String get apply {
    return _localizedValues[locale.languageCode]['apply'];
  }

  String get cartTotal {
    return _localizedValues[locale.languageCode]['cartTotal'];
  }

  String get checkoutNow {
    return _localizedValues[locale.languageCode]['checkoutNow'];
  }

  String get total {
    return _localizedValues[locale.languageCode]['total'];
  }

  String get vegetables {
    return _localizedValues[locale.languageCode]['vegetables'];
  }

  String get bakery {
    return _localizedValues[locale.languageCode]['bakery'];
  }

  String get foodgrain {
    return _localizedValues[locale.languageCode]['foodgrain'];
  }

  String get household {
    return _localizedValues[locale.languageCode]['household'];
  }

  String get searchOnGroShop {
    return _localizedValues[locale.languageCode]['searchOnGroShop'];
  }

  String get recentlySearched {
    return _localizedValues[locale.languageCode]['recentlySearched'];
  }

  String get chooseCategory {
    return _localizedValues[locale.languageCode]['chooseCategory'];
  }

  String get freshRedOnios {
    return _localizedValues[locale.languageCode]['freshRedOnios'];
  }

  String get freshRedTomatoes {
    return _localizedValues[locale.languageCode]['freshRedTomatoes'];
  }

  String get mediumPotatoes {
    return _localizedValues[locale.languageCode]['mediumPotatoes'];
  }

  String get freshLadiesFinger {
    return _localizedValues[locale.languageCode]['freshLadiesFinger'];
  }

  String get freshGarlic {
    return _localizedValues[locale.languageCode]['freshGarlic'];
  }

  String get cauliFlower {
    return _localizedValues[locale.languageCode]['cauliFlower'];
  }

  String get fresh {
    return _localizedValues[locale.languageCode]['fresh'];
  }

  String get resultsFound {
    return _localizedValues[locale.languageCode]['resultsFound'];
  }

  String get aboutCompany {
    return _localizedValues[locale.languageCode]['aboutCompany'];
  }

  String get addAddress {
    return _localizedValues[locale.languageCode]['addAddress'];
  }

  String get addressTitle {
    return _localizedValues[locale.languageCode]['addressTitle'];
  }

  String get addReview {
    return _localizedValues[locale.languageCode]['addReview'];
  }

  String get howWasYourExperience {
    return _localizedValues[locale.languageCode]['howWasYourExperience'];
  }

  String get writeYourFeedback {
    return _localizedValues[locale.languageCode]['writeYourFeedback'];
  }

  String get enterYourReview {
    return _localizedValues[locale.languageCode]['enterYourReview'];
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

  String get fresharrived {
    return _localizedValues[locale.languageCode]['fresharrived'];
  }

  String get featuredProducts {
    return _localizedValues[locale.languageCode]['featuredProducts'];
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

  String get myAccount {
    return _localizedValues[locale.languageCode]['myAccount'];
  }

  String get myAddresses {
    return _localizedValues[locale.languageCode]['myAddresses'];
  }

  String get offer1 {
    return _localizedValues[locale.languageCode]['offer1'];
  }

  String get offer2 {
    return _localizedValues[locale.languageCode]['offer2'];
  }

  String get offer3 {
    return _localizedValues[locale.languageCode]['offer3'];
  }

  String get readAllReviews {
    return _localizedValues[locale.languageCode]['readAllReviews'];
  }

  String get addToCart {
    return _localizedValues[locale.languageCode]['addToCart'];
  }

  String get moreBy {
    return _localizedValues[locale.languageCode]['moreBy'];
  }

  String get seller {
    return _localizedValues[locale.languageCode]['seller'];
  }

  String get viewAll {
    return _localizedValues[locale.languageCode]['viewAll'];
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

  String get discountedItems {
    return _localizedValues[locale.languageCode]['discountedItems'];
  }

  String get topRated {
    return _localizedValues[locale.languageCode]['topRated'];
  }

  String get confirmOrder {
    return _localizedValues[locale.languageCode]['confirmOrder'];
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
