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

  String get blackCottonTop {
    return _localizedValues[locale.languageCode]['blackCottonTop'];
  }

  String get summerFullSleeveTshirt {
    return _localizedValues[locale.languageCode]['summerFullSleeveTshirt'];
  }

  String get floralPrintShirt {
    return _localizedValues[locale.languageCode]['floralPrintShirt'];
  }

  String get hairDryer {
    return _localizedValues[locale.languageCode]['hairDryer'];
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

  String get newDeliveryTask {
    return _localizedValues[locale.languageCode]['newDeliveryTask'];
  }

  String get orderInfo {
    return _localizedValues[locale.languageCode]['orderInfo'];
  }

  String get distance {
    return _localizedValues[locale.languageCode]['distance'];
  }

  String get markAsPicked {
    return _localizedValues[locale.languageCode]['markAsPicked'];
  }

  String get direction {
    return _localizedValues[locale.languageCode]['direction'];
  }

  String get sendToBank {
    return _localizedValues[locale.languageCode]['sendToBank'];
  }

  String get availableBalance {
    return _localizedValues[locale.languageCode]['availableBalance'];
  }

  String get bankInfo {
    return _localizedValues[locale.languageCode]['bankInfo'];
  }

  String get accountHolderName {
    return _localizedValues[locale.languageCode]['accountHolderName'];
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

  String get hey {
    return _localizedValues[locale.languageCode]['hey'];
  }

  String get wallet {
    return _localizedValues[locale.languageCode]['wallet'];
  }

  String get insight {
    return _localizedValues[locale.languageCode]['insight'];
  }

  String get language {
    return _localizedValues[locale.languageCode]['language'];
  }

  String get logout {
    return _localizedValues[locale.languageCode]['logout'];
  }

  String get helpCenter {
    return _localizedValues[locale.languageCode]['helpCenter'];
  }

  String get home {
    return _localizedValues[locale.languageCode]['home'];
  }

  String get myAccount {
    return _localizedValues[locale.languageCode]['myAccount'];
  }

  String get featureImage {
    return _localizedValues[locale.languageCode]['featureImage'];
  }

  String get uploadPhoto {
    return _localizedValues[locale.languageCode]['uploadPhoto'];
  }

  String get profileInfo {
    return _localizedValues[locale.languageCode]['profileInfo'];
  }

  String get gender {
    return _localizedValues[locale.languageCode]['gender'];
  }

  String get documentation {
    return _localizedValues[locale.languageCode]['documentation'];
  }

  String get governmentID {
    return _localizedValues[locale.languageCode]['governmentID'];
  }

  String get upload {
    return _localizedValues[locale.languageCode]['upload'];
  }

  String get notUploadedYet {
    return _localizedValues[locale.languageCode]['notUploadedYet'];
  }

  String get updateInfo {
    return _localizedValues[locale.languageCode]['updateInfo'];
  }

  String get male {
    return _localizedValues[locale.languageCode]['male'];
  }

  String get youReOffline {
    return _localizedValues[locale.languageCode]['youReOffline'];
  }

  String get youReOnline {
    return _localizedValues[locale.languageCode]['youReOnline'];
  }

  String get goOnline {
    return _localizedValues[locale.languageCode]['goOnline'];
  }

  String get goOffline {
    return _localizedValues[locale.languageCode]['goOffline'];
  }

  String get orders {
    return _localizedValues[locale.languageCode]['orders'];
  }

  String get ride {
    return _localizedValues[locale.languageCode]['ride'];
  }

  String get earnings {
    return _localizedValues[locale.languageCode]['earnings'];
  }

  String get today {
    return _localizedValues[locale.languageCode]['today'];
  }

  String get viewAllTrans {
    return _localizedValues[locale.languageCode]['viewAllTrans'];
  }

  String get englishh {
    return _localizedValues[locale.languageCode]['englishh'];
  }

  String get frenchh {
    return _localizedValues[locale.languageCode]['frenchh'];
  }

  String get spanishh {
    return _localizedValues[locale.languageCode]['spanishh'];
  }

  String get portuguesee {
    return _localizedValues[locale.languageCode]['portuguesee'];
  }

  String get indonesiann {
    return _localizedValues[locale.languageCode]['indonesiann'];
  }

  String get arabicc {
    return _localizedValues[locale.languageCode]['arabicc'];
  }

  String get languages {
    return _localizedValues[locale.languageCode]['languages'];
  }

  String get selectPreferredLanguage {
    return _localizedValues[locale.languageCode]['selectPreferredLanguage'];
  }

  String get acceptDelivery {
    return _localizedValues[locale.languageCode]['acceptDelivery'];
  }

  String get markAsDelivered {
    return _localizedValues[locale.languageCode]['markAsDelivered'];
  }

  String get close {
    return _localizedValues[locale.languageCode]['close'];
  }

  String get cashOnDelivery {
    return _localizedValues[locale.languageCode]['cashOnDelivery'];
  }

  String get backToHome {
    return _localizedValues[locale.languageCode]['backToHome'];
  }

  String get viewEarnings {
    return _localizedValues[locale.languageCode]['viewEarnings'];
  }

  String get yourEarning {
    return _localizedValues[locale.languageCode]['yourEarning'];
  }

  String get viewOrderInfo {
    return _localizedValues[locale.languageCode]['viewOrderInfo'];
  }

  String get youDrove {
    return _localizedValues[locale.languageCode]['youDrove'];
  }

  String get thankYouForDelivering {
    return _localizedValues[locale.languageCode]['thankYouForDelivering'];
  }

  String get deliveredSuccessfully {
    return _localizedValues[locale.languageCode]['deliveredSuccessfully'];
  }

  String get vegetables {
    return _localizedValues[locale.languageCode]['vegetables'];
  }
  String get healthcare {
    return _localizedValues[locale.languageCode]['healthcare'];
  }

  String get recent {
    return _localizedValues[locale.languageCode]['recent'];
  }

  String get online {
    return _localizedValues[locale.languageCode]['online'];
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
