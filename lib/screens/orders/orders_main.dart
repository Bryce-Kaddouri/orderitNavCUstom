import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 100),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.33 - 10,
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width * 0.33 - 10,
                      height: 50,
                      child: const Text(
                        "Order Date",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    // ligne de séparation
                    Container(
                      width: MediaQuery.of(context).size.width * 0.33 - 10,
                      height: 1,
                      color: Colors.grey,
                    ),
                    lineTableLeftSide(
                      "Jan 17 2023",
                      Colors.black,
                    ),
                    lineTableLeftSide(
                      "Jan 17 2023",
                      Colors.black,
                    ),
                    lineTableLeftSide(
                      "Jan 17 2023",
                      Colors.black,
                    ),
                    lineTableLeftSide(
                      "Jan 17 2023",
                      Colors.black,
                    ),
                    lineTableLeftSide(
                      "Jan 17 2023",
                      Colors.black,
                    ),
                    bottombarTableLeft(),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.67 - 10,
              child: Expanded(
                child: Column(
                  children: [
                    // head of the left side (Order Date)
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.67 - 10,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Order Status",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    // ligne de séparation
                    Container(
                      width: MediaQuery.of(context).size.width * 0.67 - 10,
                      height: 1,
                      color: Colors.grey,
                    ),
                    // ligne 2

                    lineTableRightSide(
                      "COMPLETED",
                      Color.fromRGBO(129, 199, 132, 1),
                    ),
                    lineTableRightSide(
                      "COMPLETED",
                      Color.fromRGBO(129, 199, 132, 1),
                    ),
                    lineTableRightSide(
                      "COMPLETED",
                      Color.fromRGBO(129, 199, 132, 1),
                    ),
                    lineTableRightSide("DRAFT", Colors.red),
                    lineTableRightSide(
                      "COMPLETED",
                      Color.fromRGBO(129, 199, 132, 1),
                    ),

                    bottombarTableRight(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottombarTableRight() {
    return Container(
      alignment: Alignment.centerRight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.67 - 10,
      height: 30,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.67 - 10,
            height: 50,
            child: Row(
              children: [
                IconButton(
                  // disabledColor: Colors.grey[400],
                  onPressed: () {
                    print("previous");
                  },
                  icon: const Icon(
                    Icons.skip_previous_outlined,
                    color: Color.fromRGBO(189, 189, 189, 0.4),
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("back");
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromRGBO(189, 189, 189, 0.4),
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("forward");
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromRGBO(97, 97, 97, 1),
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("next");
                  },
                  icon: const Icon(
                    Icons.skip_next_outlined,
                    color: Color.fromRGBO(97, 97, 97, 1),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottombarTableLeft() {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.33 - 10,
      height: 30,
      child: Text("1 - 5 of 5",
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          )),
    );
  }

  Widget lineTableRightSide(String title, Color color) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.67 - 10,
      child: Expanded(
        child: Column(
          children: [
            // head of the left side (Order Date)
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.67 - 10,
              height: 50,
              color: Colors.white,
              child: Text(title,
                  style: TextStyle(
                      fontSize: 18, color: color, fontWeight: FontWeight.w600)),
            ),

            // ligne de séparation
            Container(
              width: MediaQuery.of(context).size.width * 0.67 - 10,
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget lineTableLeftSide(
    String date,
    Color color,
  ) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.33 - 10,
      child: Expanded(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width * 0.33 - 10,
              height: 50,
              color: Colors.white,
              child: Text(
                date,
                style: TextStyle(fontSize: 15, color: color),
              ),
            ),
            // ligne de séparation
            Container(
              width: MediaQuery.of(context).size.width * 0.33 - 10,
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
