import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Components/drawer.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Theme/colors.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import '../../language_cubit.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  LanguageCubit _languageCubit;
  List<int> radioButtons = [0, -1, -1, -1, -1];
  String selectedLanguage;

  @override
  void initState() {
    super.initState();
    _languageCubit = BlocProvider.of<LanguageCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<String> languages = [
      locale.englishh,
      locale.spanishh,
      locale.portuguesee,
      locale.frenchh,
      locale.arabicc,
      locale.indonesiann,
    ];
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text(
          locale.languages,
          style: TextStyle(color: kMainTextColor),
        ),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 16, right: 16, bottom: 16),
              child: Text(
                locale.selectPreferredLanguage,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            RadioButtonGroup(
              activeColor: Theme.of(context).primaryColor,
              labelStyle: Theme.of(context).textTheme.caption,
              onSelected: (selectedLocale) {
                setState(() {
                  selectedLanguage = selectedLocale;
                });
              },
              labels: languages,
              itemBuilder: (Radio radioButton, Text title, int i) {
                return Column(
                  children: <Widget>[
                    Container(
                      height: 56.7,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ListTile(
                          leading: radioButton,
                          title: Text(
                            languages[i],
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(fontSize: 19),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0)
                  ],
                );
              },
            ),
            Spacer(),
            CustomButton(
              label: locale.save,
              onTap: () {
                if (selectedLanguage == locale.englishh) {
                  _languageCubit.selectEngLanguage();
                } else if (selectedLanguage == locale.arabicc) {
                  _languageCubit.selectArabicLanguage();
                } else if (selectedLanguage == locale.portuguesee) {
                  _languageCubit.selectPortugueseLanguage();
                } else if (selectedLanguage == locale.frenchh) {
                  _languageCubit.selectFrenchLanguage();
                } else if (selectedLanguage == locale.spanishh) {
                  _languageCubit.selectSpanishLanguage();
                } else if (selectedLanguage == locale.indonesiann) {
                  _languageCubit.selectIndonesianLanguage();
                }

                Navigator.pop(context);
              },
            ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
