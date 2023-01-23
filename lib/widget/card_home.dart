import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardHome extends StatelessWidget {
  String title;
  FlutterLogo logo;
  String? subTitle;
  double fontSize;
  Widget widget;
  CardHome({
    super.key,
    required this.title,
    required this.logo,
    this.subTitle,
    required this.fontSize,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => widget);
        Navigator.push(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: const Color.fromRGBO(224, 224, 224, 1), width: 1),
        ),
        width: MediaQuery.of(context).size.width / 2 - 30,
        height: MediaQuery.of(context).size.height * 0.5 - 100,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.5 - 100 - 22.5,
              child: Column(
                children: [
                  logo,
                  const SizedBox(
                    height: 10,
                  ),
                  Text(title,
                      style: TextStyle(
                          fontSize: fontSize, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(subTitle!,
                      style: const TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
