import 'package:flutter/material.dart';

class FavouriteDetail extends StatelessWidget {
  final String name_company;
  final String image_company;
  FavouriteDetail({
    super.key,
    required this.name_company,
    required this.image_company,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            "name_company : $name_company, image_company : $image_company"),
      ),
    );
  }
}
