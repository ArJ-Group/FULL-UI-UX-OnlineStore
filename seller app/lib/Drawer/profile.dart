import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/custom_button.dart';
import 'package:groshop_seller/Components/entry_field.dart';
import 'package:groshop_seller/Locale/locales.dart';
import 'package:groshop_seller/Routes/routes.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      body: FadedSlideAnimation(
        Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      FadedScaleAnimation(
                        Image.asset(
                          'assets/seller1.png',
                          height: 230,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned.directional(
                          top: 40,
                          textDirection: Directionality.of(context),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ))),
                      Positioned.directional(
                        textDirection: Directionality.of(context),
                        start: 20,
                        bottom: 20,
                        child: Row(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              locale.changeCoverImage,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 12),
                    child: Text(
                      locale.setProfileInfo,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  EntryField(
                    label: locale.sellerName,
                    labelFontSize: 16,
                    labelFontWeight: FontWeight.w400,
                    controller: TextEditingController()..text = 'Operum Market',
                  ),
                  EntryField(
                    label: locale.emailAddress,
                    labelFontSize: 16,
                    labelFontWeight: FontWeight.w400,
                    controller: TextEditingController()
                      ..text = 'operummarket@mail.com',
                  ),
                  EntryField(
                    label: locale.phoneNumber,
                    labelFontSize: 16,
                    labelFontWeight: FontWeight.w400,
                    controller: TextEditingController()
                      ..text = '+1 987 654 3210',
                  ),
                  Divider(
                    height: 30,
                    thickness: 8,
                    color: Colors.grey[100],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 8),
                    child: Text(
                      locale.setSellerAddress,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 8),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, PageRoutes.addAddress);
                          },
                          child: Row(
                            children: [
                              Text(
                                locale.selectOnMap,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                              ),
                              Spacer(),
                              Icon(
                                Icons.location_on,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          maxLines: 2,
                          initialValue:
                              '1124, Patestine Street, Jackson Tower, Near City Garden, New York, USA',
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[200]))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  onTap: () => Navigator.pop(context),
                  label: locale.update,
                ))
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
