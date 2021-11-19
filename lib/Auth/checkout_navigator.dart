import 'package:flutter/material.dart';
import 'package:groshop/Pages/Checkout/Address.dart';
import 'package:groshop/Pages/Checkout/ConfirmOrder.dart';
import 'package:groshop/Pages/Checkout/PaymentMode.dart';
import 'package:groshop/Pages/Search/cart.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class CheckOutRoutes {
  static const String cartPage = 'root/checkout';
  static const String selectAddress = 'selectAddress/';
  static const String paymentMode = 'paymentMode';
  static const String confirmOrder = 'confirmOrder';
}

class CheckOutNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKey.currentState.canPop();
        if (canPop) {
          navigatorKey.currentState.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: CheckOutRoutes.cartPage,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case CheckOutRoutes.cartPage:
              builder =
                  (BuildContext _) => CartPage(() => Navigator.pop(context));
              break;
            case CheckOutRoutes.selectAddress:
              builder = (BuildContext _) => AddressPage(
                    () => Navigator.pop(context),
                  );
              break;
            case CheckOutRoutes.paymentMode:
              builder = (BuildContext _) => PaymentModePage(
                    () => Navigator.pop(context),
                  );
              break;
            case CheckOutRoutes.confirmOrder:
              builder = (BuildContext _) => ConfirmOrderPage(() {
                    Navigator.pop(context);
                  });
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
