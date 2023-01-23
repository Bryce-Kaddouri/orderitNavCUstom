import 'package:flutter/material.dart';
import 'package:ordernav/screens/orders/orders_list.dart';
import 'package:ordernav/screens/profile/profile_list.dart';
import 'favourites/favourite_list.dart';
import 'suppliers/suppliers_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            // -------------- start column 1 ------------------ //
            Column(
              children: [
                // container for suppliers
                GestureDetector(
                  onTap: () {
                    print("tapped on suppliers home screen");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuppliersListPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(),
                      ],
                      border: Border.all(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        width: 1,
                      ),
                    ),
                    margin: const EdgeInsets.only(
                        top: 20, left: 15, right: 10, bottom: 5),
                    width: MediaQuery.of(context).size.width * 0.5 - 20,
                    height: MediaQuery.of(context).size.height * 0.5 - 110,
                    // 100 because 30 for the appbar and 70 for the bottom nav bar
                    child: Column(
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.height / 2.8 - 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Text(
                          "Suppliers",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ---------------- end container for suppliers ------------------ //

                // ---------------- start  box favorites -------------------- //
                GestureDetector(
                  onTap: () {
                    print("tapped on favourites home screen");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FavouritePageList(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(),
                      ],
                      border: Border.all(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        width: 1,
                      ),
                    ),
                    margin: const EdgeInsets.only(
                        left: 15, right: 10, top: 5, bottom: 10),
                    width: MediaQuery.of(context).size.width * 0.5 - 20,
                    height: MediaQuery.of(context).size.height * 0.5 - 110,
                    // 100 because 30 for the appbar and 70 for the bottom nav bar
                    child: Column(
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.height / 2.8 - 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Text(
                          "Favourites",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "3/4",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: MediaQuery.of(context).size.height / 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ---------------- end  box favourites -------------------- //
              ],
            ),
            // -------------- end column 1 ------------------ //
            // -------------- start column 2 ------------------ //
            Column(
              children: [
                // ---------------- start  box orders -------------------- //
                GestureDetector(
                  onTap: () {
                    print("tapped on orders home screen");

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrdersListPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(),
                      ],
                    ),
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 5,
                      left: 5,
                    ),
                    width: MediaQuery.of(context).size.width * 0.5 - 20,
                    height: MediaQuery.of(context).size.height * 0.5 - 110,
                    child: Column(
                      children: [
                        Container(
                          height:
                              MediaQuery.of(context).size.height / 2.8 - 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: MediaQuery.of(context).size.height / 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ---------------- end  box order -------------------- //

                Row(
                  children: [
                    // ---------------- start  profile box -------------------- //
                    GestureDetector(
                      onTap: () {
                        print("tapped on profile home screen");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileListPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            color: Color.fromRGBO(224, 224, 224, 1),
                            width: 1,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          top: 5,
                          bottom: 10,
                        ),
                        width: MediaQuery.of(context).size.width * 0.5 - 20,
                        height: MediaQuery.of(context).size.height * 0.5 - 110,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 2.8 -
                                  110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // ---------------- end  box Profile -------------------- //
              ],
            ),
            // -------------- end column 2 ------------------ //
          ],
        ),
      ),
    );
  }
}
