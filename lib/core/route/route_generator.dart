
import 'package:flutter/material.dart';
import 'package:untitled3/core/route/rout_names.dart';
import 'package:untitled3/features/search_page/main_search_page.dart';
import 'package:untitled3/profile/profile_page.dart';
import '../../features/auth/sign_in/reset_page.dart';
import '../../features/auth/sign_in/send_email.dart';
import '../../features/auth/sign_in/sign_in_email.dart';
import '../../features/auth/sign_in/sing_in_password.dart';
import '../../features/auth/sign_up/about.dart';
import '../../features/auth/sign_up/sign_up.dart';
import '../../features/home/bottom_nav_bar.dart';
import '../../features/home/porduct_categories.dart';
import '../../features/home/shop_category.dart';
import '../../features/into/splash_page.dart';
import '../../order/orders.dart';
import '../../order/orders_detail.dart';
import '../../profile/add_adress.dart';
import '../../profile/add_card.dart';
import '../../profile/adress_edit.dart';
import '../../profile/favourite_page.dart';
import '../../profile/payment_page.dart';
import '../../profile/wishlist.dart';

class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.signInEmail:
        return MaterialPageRoute(builder: (_) => const SignInEmail());
      case RouteNames.infoPage:
        return MaterialPageRoute(builder: (_) => const InfoPage());
      case RouteNames.signInPassword:
        return MaterialPageRoute(builder: (_) => const SignInPassword());
      case RouteNames.createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case RouteNames.resetPage:
        return MaterialPageRoute(builder: (_) => const ResetPage());
      case RouteNames.sendEmailPage:
        return MaterialPageRoute(builder: (_) => const SendEmail());
    // case RouteNames.homePage:
    //   return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteNames.logInAbout:
        return MaterialPageRoute(builder: (_) => const LogInAbout());
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RouteNames.shopCategories:
        return MaterialPageRoute(builder: (_) => const ShopCategories());
      case RouteNames.productsCategories:
        String category = routeSettings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => ProductsCategories(
              category: category,
            ));
      case RouteNames.addressEdit:
        return MaterialPageRoute(builder: (_) => const AddressEdit());
      case RouteNames.addAddress:
        return MaterialPageRoute(builder: (_) => const AddAddress());
      case RouteNames.paymentPage:
        return MaterialPageRoute(builder: (_) => const PaymentPage());
      case RouteNames.addCard:
        return MaterialPageRoute(builder: (_) => const AddCardPage());
      case RouteNames.wishlist:
        return MaterialPageRoute(builder: (_) => const Wishlist());
      case RouteNames.orders:
        return MaterialPageRoute(builder: (_) => const Orders());
      case RouteNames.ordersDetails:
        return MaterialPageRoute(builder: (_) => const OrderDetails());
      case RouteNames.profilePage:
        return MaterialPageRoute(builder: (_)=>  const ProfilePage());
      case RouteNames.favouritePage:
        return MaterialPageRoute(builder: (_)=>  const  FavouritePage());
      case RouteNames.searchPageMain:
        return MaterialPageRoute(builder: (_) => const MainSearchPage());
    // case RouteNames.profilePage:
    //   return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
