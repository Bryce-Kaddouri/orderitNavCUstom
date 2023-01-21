import 'package:flutter/material.dart';
import 'package:ordernav/screens/favourites/favourite_detail.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    List _favourite = [
      {
        "name_company": "McDonald's",
        "image_company": "assets/images/mcdonalds.png",
      },
      {
        "name_company": "Burger King",
        "image_company": "assets/images/burgerking.png",
      },
      {
        "name_company": "KFC",
        "image_company": "assets/images/kfc.png",
      },
      {
        "name_company": "Pizza Hut",
        "image_company": "assets/images/pizzahut.png",
      },
      {
        "name_company": "Subway",
        "image_company": "assets/images/subway.png",
      },
      {
        "name_company": "Starbucks",
        "image_company": "assets/images/starbucks.png",
      },
      {
        "name_company": "Domino's Pizza",
        "image_company": "assets/images/dominos.png",
      },
      {
        "name_company": "Wendy's",
        "image_company": "assets/images/wendys.png",
      },
      {
        "name_company": "Taco Bell",
        "image_company": "assets/images/tacobell.png",
      },
      {
        "name_company": "Popeyes",
        "image_company": "assets/images/popeyes.png",
      },
      {
        "name_company": "Dunkin' Donuts",
        "image_company": "assets/images/dunkindonuts.png",
      },
      {
        "name_company": "Chick-fil-A",
        "image_company": "assets/images/chickfila.png",
      },
      {
        "name_company": "Jack in the Box",
        "image_company": "assets/images/jackinthebox.png",
      },
      {
        "name_company": "Arby's",
        "image_company": "assets/images/arbys.png",
      },
      {
        "name_company": "Carl's Jr.",
        "image_company": "assets/images/carlsjr.png",
      },
      {
        "name_company": "Hardee's",
        "image_company": "assets/images/hardees.png",
      },
      {
        "name_company": "Sonic",
        "image_company": "assets/images/sonic.png",
      },
      {
        "name_company": "Bojangles'",
        "image_company": "assets/images/bojangles.png",
      },
    ];

    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: _favourite.length,
        itemBuilder: (BuildContext context, int index) {
          index = index + 1;
          final item = _favourite[index] as Map;
          final name = item['name_company'] as String;
          final image = item['image_company'] as String;

          return Container(
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                color: Colors.grey.withOpacity(1.0),
                width: 1.0,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.withOpacity(1.0),
                width: 1.0,
              ),
            ),
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 14.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(20.0),
              style: ListTileStyle.list,
              //ma,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
                side: BorderSide(
                  color: Colors.grey.withOpacity(1.0),
                  width: 1.0,
                ),
              ),
              title: Text(_favourite[index]['name_company']),
              trailing: Icon(Icons.arrow_forward_ios,
                  color: Colors.orange, size: 30.0),
              leading: CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  radius: 30.0,
                  child: Text(
                    '$index',
                    style: TextStyle(color: Colors.white),
                  )
                  // padding const EdgeInsets.all(2.0),
                  ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavouriteDetail(
                      name_company: name,
                      image_company: image,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
