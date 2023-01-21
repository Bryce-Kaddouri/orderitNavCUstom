import 'package:flutter/material.dart';

class FavouritePageList extends StatefulWidget {
  const FavouritePageList({super.key});

  @override
  State<FavouritePageList> createState() => _FavouritePageListState();
}

class _FavouritePageListState extends State<FavouritePageList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Favourite Page"),
      ),
    );
  }
}
