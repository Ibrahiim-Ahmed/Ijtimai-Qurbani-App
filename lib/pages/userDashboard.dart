import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          const Text(
            " Welcome User",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 160,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 160,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "  Current Bookings",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(60.0),
              border: TableBorder.all(style: BorderStyle.none),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('S. No.',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold))
                  ]),
                  Column(children: [
                    Text('Category',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold))
                  ]),
                  Column(children: [
                    Text('Hissa Qty',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold))
                  ]),
                  Column(children: [
                    Text('Id No.',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold))
                  ]),
                  Column(children: [
                    Text('Total Amt',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold))
                  ]),
                  Column(children: [
                    Text('Date',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold))
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text('1')]),
                  Column(children: [Text('Cow')]),
                  Column(children: [Text('3')]),
                  Column(children: [Text('34')]),
                  Column(children: [Text('60,000')]),
                  Column(children: [Text('20-8-23')]),
                ]),
                TableRow(children: [
                  Column(children: [Text('2')]),
                  Column(children: [Text('Cow')]),
                  Column(children: [Text('4')]),
                  Column(children: [Text('52')]),
                  Column(children: [Text('80,000')]),
                  Column(children: [Text('20-8-23')]),
                ]),
                TableRow(children: [
                  Column(children: [Text('3')]),
                  Column(children: [Text('Cow')]),
                  Column(children: [Text('1')]),
                  Column(children: [Text('22')]),
                  Column(children: [Text('20,000')]),
                  Column(children: [Text('20-8-23')]),
                ]),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "  Past Bookings",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Nothing to show",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    ));
  }
}
