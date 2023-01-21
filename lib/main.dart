import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:ordernav/screens/favourites/favourite_main.dart';

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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // liste title appbar
  final List<String> _title = [
    "Home",
    "Favourite",
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
                style: const TextStyle(color: Colors.black)),
          ),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(255, 202, 40, 1),
              Color.fromRGBO(255, 111, 0, 1),
            ],
          ),
        ),
        body: const [
          HomePage(),
          FavouritePage(),
          NewOrderPage(),
          OrdersPage(),
          ProfilePage(),
        ][_selectedIndex],
        bottomNavigationBar: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: BottomAppBar(
            elevation: 20,
            child: Row(
              children: [
                buildNavItem(Icons.home, "Home", 0),
                buildNavItem(Icons.favorite_border, "Favourite", 1),
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

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Orders Page"),
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
