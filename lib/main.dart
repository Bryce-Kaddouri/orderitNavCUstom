import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:ordernav/screens/favourites/favourite_main.dart';
import 'package:ordernav/screens/orders/orders_main.dart';

// screens import
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OrderIT',
      theme: ThemeData(),
      home: const MyHomePage(title: 'OrderIT'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // liste title appbar
  final List<String> _title = [
    "Home",
    "Favourites",
    "New Order",
    "Orders",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewGradientAppBar(
          title: Center(
            child: Text(_title[_selectedIndex],
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w400)),
          ),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(255, 202, 40, 1),
              Color.fromRGBO(255, 111, 0, 1),
            ],
          ),
        ),
        body: Container(
            color: Colors.grey[300],
            child: const [
              HomePage(),
              FavouritePage(),
              NewOrderPage(),
              OrdersPage(),
              ProfilePage(),
            ][_selectedIndex]),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(33, 33, 33, 1),
                blurRadius: 10,
                spreadRadius: 0,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: BottomAppBar(
              elevation: 50,
              child: Row(
                children: [
                  buildNavItem(Icons.home, "Home", 0),
                  buildNavItem(Icons.favorite_border, "Favourites", 1),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: 88,
                      height: 70,
                      child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange[700],
                        ),
                        child: Column(
                          children: const [
                            Icon(Icons.add, color: Colors.white),
                            Text("New Order",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  buildNavItem(Icons.article_outlined, "Orders", 3),
                  buildNavItem(Icons.account_circle, "Profile", 4),
                ],
              ),
            ),
          ),
        ));
  }

  Widget buildNavItem(IconData icon, String title, int index) {
    return GestureDetector(
      onTap: () {
        print("Tapped $title");
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        // center the content vertically
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 70,
        width: MediaQuery.of(context).size.width / 4 - 22,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Icon(icon, color: _selectedIndex == index ? Colors.orange : null),
              Text(
                title,
                style: TextStyle(
                    color: _selectedIndex == index ? Colors.orange : null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("New Order Page"),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
