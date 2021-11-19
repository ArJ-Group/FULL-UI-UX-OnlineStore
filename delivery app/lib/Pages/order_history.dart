import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:groshop_delivery/Components/custom_button.dart';
import 'package:groshop_delivery/Locale/locales.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('30 JUN 2020, 11:59 AM'),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            Column(
              children: [
                ListTile(
                  title: Text(
                    'Fresh Ladies Fingers',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(locale.vegetables),
                  trailing: Text('\$ 6.00'),
                ),
                Divider(
                  height: 5,
                  thickness: 0.8,
                ),
                ListTile(
                  title: Text(
                    'Hand Sanitizer',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(locale.healthcare),
                  trailing: Text('\$ 8.00'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  color: Color(0xffF4F7FA),
                  child: Row(
                    children: [
                      Text(locale.cashOnDelivery,
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                fontSize: 16,
                                color: Color(0xFF39c526),
                              )),
                      Spacer(),
                      Text(
                        '\$ 20.00',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 16,
                              color: Color(0xFF39c526),
                            ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey[100],
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12),
                  child: Row(
                    children: [
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: locale.distance + '\n',
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text: '8.5 km',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.green, height: 1.5)),
                        TextSpan(
                            text: ' (12 min)',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(fontWeight: FontWeight.w300)),
                      ])),
                      Spacer(
                        flex: 2,
                      ),
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: locale.earnings + '\n',
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text: '\$ 5.20',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.green, height: 1.5)),
                      ])),
                      Spacer(),
                    ],
                  ),
                ),
                Divider(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.green,
                    size: 24,
                  ),
                  title: Text(
                    'Johnson Retailers',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16),
                  ),
                  subtitle: Text(
                    '1024, Hemiltone Street, Union Market, USA',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 12),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.navigation,
                    color: Colors.green,
                    size: 24,
                  ),
                  title: Text(
                    'Emili Williamson',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16),
                  ),
                  subtitle: Text(
                    'D-32,  Deniel Street, Central Residency, USA',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 12),
                  ),
                ),
                SizedBox(height: 60),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: CustomButton(
                label: locale.markAsDelivered,
              ),
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
