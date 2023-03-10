import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    final DataTableSource _data = MyData();

    // put the old code for the demo
    return Center(
      child: Container(
        color: Colors.grey[300],
        padding: const EdgeInsets.only(left: 8, right: 8, top: 50),
        child: Column(
          children: [
            PaginatedDataTable(
              showCheckboxColumn: false,
              columnSpacing: // auto spacing to take up the whole width
                  MediaQuery.of(context).size.width - // width of the screen
                      20 * 2 - // horizontal margin
                      100 - // width of the first column
                      100, // width of the second column
              showFirstLastButtons: true,
              rowsPerPage: 5,
              source: _data,

              columns: const [
                DataColumn(
                    label: Text(
                  'Order Date',
                  style: TextStyle(color: Color.fromRGBO(66, 165, 245, 1)),
                )),
                DataColumn(
                  label: Text(
                    'Order Status',
                    style: TextStyle(
                      color: Color.fromRGBO(66, 165, 245, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// data for the paginate table
class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            'order_date': 'jan 17, 2023',
            'order_status': // randomize the order status
                index % 2 == 0 ? 'COMPLETED' : 'DRAFT',
          });

  late BuildContext context;

  @override
  DataRow? getRow(int index) {
    final _orderDate = _data[index]['order_date'];
    final _orderStatus = _data[index]['order_status'];

    return DataRow(
      // displqy an alertdialog when the row is tapped
      onSelectChanged: (value) {
        if (value == true) {
          // displqy a snakbar when the row is tapped
          print('number of row: $index');
          print('order date: $_orderDate');
          print('order status: $_orderStatus');
        }
      },
      cells: [
        DataCell(
          Text(_orderDate),
        ),
        DataCell(
          Text(
            _orderStatus,
            style: TextStyle(
              color: _orderStatus == 'COMPLETED' ? Colors.green : Colors.red,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
