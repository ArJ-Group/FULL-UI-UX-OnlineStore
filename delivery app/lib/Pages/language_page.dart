import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Pages/drawer.dart';
import 'package:groshop_delivery/language_cubit.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  LanguageCubit _languageCubit;
  String selectedLocal;
  String selectedTheme;

  @override
  void initState() {
    super.initState();
    _languageCubit = BlocProvider.of<LanguageCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    final List<String> languages = [
      locale.englishh,
      locale.arabicc,
      locale.frenchh,
      locale.indonesiann,
      locale.portuguesee,
      locale.spanishh,
    ];
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.languages),
        centerTitle: true,
      ),
      drawer: AccountDrawer(),
      body: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                locale.selectPreferredLanguage.toUpperCase(),
                style: theme.textTheme.headline6.copyWith(fontSize: 18),
              ),
            ),
            RadioButtonGroup(
              activeColor: theme.primaryColor,
              labelStyle: theme.textTheme.caption,
              onSelected: (selectedLocale) {
                setState(() {
                  selectedLocal = selectedLocale;
                });
              },
              labels: languages.map((e) => e).toList(),
              itemBuilder: (Radio radioButton, Text title, int i) {
                return ListTile(
                  leading: radioButton,
                  title: Text(
                    languages[i],
                    style: theme.textTheme.headline6
                        .copyWith(color: theme.backgroundColor),
                  ),
                );
              },
            ),
            Spacer(),
            CustomButton(onTap: () {
              if (selectedLocal == locale.englishh) {
                _languageCubit.selectEngLanguage();
              } else if (selectedLocal == locale.arabicc) {
                _languageCubit.selectArabicLanguage();
              } else if (selectedLocal == locale.portuguesee) {
                _languageCubit.selectPortugueseLanguage();
              } else if (selectedLocal == locale.frenchh) {
                _languageCubit.selectFrenchLanguage();
              } else if (selectedLocal == locale.spanishh) {
                _languageCubit.selectSpanishLanguage();
              } else if (selectedLocal == locale.indonesiann) {
                _languageCubit.selectIndonesianLanguage();
              }
              Navigator.pop(context);
            }),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
