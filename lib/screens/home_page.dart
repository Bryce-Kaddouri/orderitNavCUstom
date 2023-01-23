import 'package:flutter/material.dart';
import 'package:ordernav/main.dart';
import 'package:ordernav/screens/orders/orders_list.dart';
import 'package:ordernav/screens/orders/orders_main.dart';
import 'package:ordernav/screens/profile/profile_list.dart';
import 'favourites/favourite_list.dart';
import 'suppliers/suppliers_list.dart';
import 'package:ordernav/widget/card_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // if width screen < height screen => font size = 20 else font size = 30
    final double fontSize =
        MediaQuery.of(context).size.width < MediaQuery.of(context).size.height
            ? 27
            : 40; // ignore: prefer_const_constructors

    return Container(
      width: double.infinity,
      color: Colors.grey[300],
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              CardHome(
                title: 'Suppliers',
                logo: const FlutterLogo(
                  size: 100,
                ),
                fontSize: fontSize,
                subTitle: '3/4',
                widget: const SuppliersListPage(),
              ),
              const SizedBox(
                width: 15,
              ),
              CardHome(
                  title: 'Suppliers',
                  logo: const FlutterLogo(
                    size: 100,
                  ),
                  fontSize: fontSize,
                  subTitle: '3/4',
                  widget: const OrdersListPage()),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CardHome(
                title: 'Suppliers',
                logo: const FlutterLogo(
                  size: 100,
                ),
                fontSize: fontSize,
                subTitle: '3/4',
                widget: const FavouritePageList(),
              ),
              const SizedBox(
                width: 15,
              ),
              CardHome(
                title: 'Suppliers',
                logo: const FlutterLogo(
                  size: 100,
                ),
                fontSize: fontSize,
                subTitle: '3/4',
                widget: const ProfileListPage(),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
