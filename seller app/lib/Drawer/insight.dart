import 'package:flutter/material.dart';
import 'package:groshop_seller/Components/drawer.dart';
import 'package:groshop_seller/Locale/locales.dart';

class TopSellingItem{
  TopSellingItem(this.img, this.name, this.sold, this.price);
  String img;
  String name;
  String sold;
  String price;
}

class InsightPage extends StatefulWidget {
  @override
  _InsightPageState createState() => _InsightPageState();
}

class _InsightPageState extends State<InsightPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<TopSellingItem> topSellingItems = [
      TopSellingItem('assets/ProductImages/lady finger.png', locale.freshLadiesFinger, '124', '378.00'),
      TopSellingItem('assets/ProductImages/tomato.png', locale.freshredtomatoes, '119', '289.00'),
      TopSellingItem('assets/ProductImages/onion.png', locale.freshredonion, '98', '235.00'),
      TopSellingItem('assets/ProductImages/Potatoes.png', locale.mediumPotatoes, '79', '159.00'),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: buildDrawer(context),
      body: Stack(
        children: [
          Image.asset('assets/menubg.png',height: 180,width:MediaQuery.of(context).size.width,fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.only(top:24.0),
            child: AppBar(title: Text(locale.insight,style: TextStyle(color:Theme.of(context).scaffoldBackgroundColor),),
              centerTitle: true, iconTheme: new IconThemeData(color: Colors.white),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: 180),
            child:ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 15,),
                Container(
                  child: Image.asset('assets/charts.png',fit: BoxFit.fill,),
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 0.0, // soften the shadow
                        spreadRadius: 0.5, //extend the shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 16),
                  child: Text(locale.topSellingItems,style: Theme.of(context).textTheme.subtitle1,),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: 0),
                  shrinkWrap: true,
                    itemCount: topSellingItems.length,
                    itemBuilder: (context,index){
                      return buildTopSellingItemCard(context,topSellingItems[index].img,topSellingItems[index].name, topSellingItems[index].sold, topSellingItems[index].price);
                    }),
              ],
            ),
          ),
          Positioned.directional( textDirection: Directionality.of(context),
              top: 130,
              start: 0,
              end: 0,child: buildOrderCard(context)),
        ],
      ),
    );
  }

  Container buildOrderCard(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 0.0, // soften the shadow
                    spreadRadius: 0.5, //extend the shadow
                   ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                        children: <TextSpan>[
                         TextSpan(text: '${locale.orders}\n',style: Theme.of(context).textTheme.subtitle2),
                         TextSpan(text: '698',style: Theme.of(context).textTheme.subtitle1.copyWith(height: 2)),
                        ]
                      )),
                      VerticalDivider(color: Colors.grey[400],),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                        children: <TextSpan>[
                         TextSpan(text: '${locale.revenue}\n',style: Theme.of(context).textTheme.subtitle2),
                         TextSpan(text: '\$ 7.8k',style: Theme.of(context).textTheme.subtitle1.copyWith(height: 2)),
                        ]
                      )),
                      VerticalDivider(color: Colors.grey[400],),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                        children: <TextSpan>[
                         TextSpan(text: '${locale.pending}\n',style: Theme.of(context).textTheme.subtitle2),
                         TextSpan(text: '14',style: Theme.of(context).textTheme.subtitle1.copyWith(height: 2)),
                        ]
                      )),
                    ],
                  ),
                ),
              );
  }

  Container buildTopSellingItemCard(BuildContext context,String img, String name, String sold, String price) {
    var locale = AppLocalizations.of(context);
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(img,fit: BoxFit.fill,height: 70,)),
                        SizedBox(width: 10,),
                        RichText(text: TextSpan(
                            style: Theme.of(context).textTheme.subtitle1,
                            children: <TextSpan>[
                              TextSpan(text: '$name\n'),
                              TextSpan(text: '${locale.apparel}\n\n',style: Theme.of(context).textTheme.subtitle2),
                              TextSpan(text: '$sold ${locale.sold}',style: Theme.of(context).textTheme.bodyText2.copyWith(height: 0.5)),
                            ]
                        )),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: RichText(text: TextSpan(
                      style: Theme.of(context).textTheme.subtitle2.copyWith(height: 1),
                          children: <TextSpan>[
                            TextSpan(text:'\n\n\n\n${locale.revenue} '),
                            TextSpan(text:'\$$price', style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 14)),
                          ]
                      ),),
                    ),
                  ],
                ),
              );
  }
}
