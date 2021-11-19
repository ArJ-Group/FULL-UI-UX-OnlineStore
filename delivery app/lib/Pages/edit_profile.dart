import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Components/entry_field.dart';
import 'package:groshop_delivery/Locale/locales.dart';
import 'package:groshop_delivery/Pages/drawer.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      drawer: AccountDrawer(),
      appBar: AppBar(
        title: Text(locale.myAccount.toUpperCase()),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Divider(
                  thickness: 8,
                  color: Theme.of(context).dividerColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 14),
                  child: Text(
                    locale.featureImage,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/imgprofile.png',
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.camera_alt,
                        size: 26,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        locale.uploadPhoto,
                        style: TextStyle(
                            color: Theme.of(context).focusColor, height: 1.5),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 8,
                  color: Theme.of(context).dividerColor,
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 14),
                  child: Text(
                    locale.profileInfo,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                EntryField(
                  label: locale.fullName.toUpperCase(),
                  labelColor: Theme.of(context).disabledColor,
                  labelFontWeight: FontWeight.w500,
                  labelFontSize: 16,
                  controller: TextEditingController()..text = 'George Anderson',
                ),
                EntryField(
                  label: locale.gender.toUpperCase(),
                  labelColor: Theme.of(context).disabledColor,
                  labelFontWeight: FontWeight.w500,
                  labelFontSize: 16,
                  suffixIcon: Icons.keyboard_arrow_down,
                  controller: TextEditingController()..text = locale.male,
                ),
                EntryField(
                  label: locale.phoneNumber.toUpperCase(),
                  labelColor: Theme.of(context).disabledColor,
                  labelFontWeight: FontWeight.w500,
                  labelFontSize: 16,
                  controller: TextEditingController()..text = '+1 987 654 3210',
                ),
                EntryField(
                  label: locale.emailAddress.toUpperCase(),
                  labelColor: Theme.of(context).disabledColor,
                  labelFontWeight: FontWeight.w500,
                  labelFontSize: 16,
                  controller: TextEditingController()
                    ..text = 'deliveryman@mail.com',
                ),
                Divider(
                  height: 20,
                  thickness: 8,
                  color: Theme.of(context).dividerColor,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, bottom: 14, top: 14),
                  child: Text(
                    locale.documentation,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                ListTile(
                    leading: Icon(
                      Icons.verified_user,
                      color: Colors.green,
                    ),
                    title: Text(
                      locale.governmentID + '\n',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(fontSize: 13, height: 0.8),
                    ),
                    subtitle: Text(
                      'myvoterid.jpg',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    trailing: Text(
                      '\n\n' + locale.upload,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    )),
                ListTile(
                    leading: Icon(
                      Icons.live_help,
                      color: Colors.green,
                    ),
                    title: Text(
                      locale.governmentID + '\n',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(fontSize: 13, height: 0.8),
                    ),
                    subtitle: Text(
                      locale.notUploadedYet,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                    trailing: Text(
                      '\n\n' + locale.upload,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    )),
                SizedBox(height: 80),
              ],
            ),
            Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: CustomButton(
                  label: locale.updateInfo,
                  onTap: () => Navigator.pop(context),
                )),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
