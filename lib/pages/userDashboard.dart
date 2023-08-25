import 'package:flutter/material.dart';
import 'package:ijtimai_qurbani_app/pages/cow_inventory.dart';
import 'package:ijtimai_qurbani_app/pages/goat_inventory.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Welcome\nUser",
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 68, 40, 30),
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  _buildInventoryCard(
                    context,
                    'lib/assets/cow_card_image.png',
                    'Cow Inventory',
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CowInventory()));
                    },
                  ),
                  const SizedBox(width: 20),
                  _buildInventoryCard(
                    context,
                    'lib/assets/goat_card_image.png',
                    'Goat Inventory',
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GoatInventory()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              _buildSectionTitle('Current Bookings'),
              _buildBookingTable(),
              const SizedBox(height: 30),
              _buildSectionTitle('Past Bookings'),
              const Center(
                child: Text(
                  "Nothing to show",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInventoryCard(BuildContext context, String imagePath,
      String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 120,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 5.0,
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 26,
        color: Color.fromARGB(255, 68, 40, 30),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildBookingTable() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(60.0),
        border: TableBorder.all(color: Colors.grey),
        children: [
          TableRow(children: [
            _buildTableHeader('S. No.'),
            _buildTableHeader('Category'),
            _buildTableHeader('Hissa Qty'),
            _buildTableHeader('Id No.'),
            _buildTableHeader('Total Amt'),
            _buildTableHeader('Date'),
          ]),
          TableRow(children: [
            _buildTableCell('1'),
            _buildTableCell('Cow'),
            _buildTableCell('3'),
            _buildTableCell('34'),
            _buildTableCell('60,000'),
            _buildTableCell('20-8-23'),
          ]),
          TableRow(children: [
            _buildTableCell('2'),
            _buildTableCell('Cow'),
            _buildTableCell('4'),
            _buildTableCell('52'),
            _buildTableCell('80,000'),
            _buildTableCell('20-8-23'),
          ]),
          TableRow(children: [
            _buildTableCell('3'),
            _buildTableCell('Cow'),
            _buildTableCell('1'),
            _buildTableCell('22'),
            _buildTableCell('20,000'),
            _buildTableCell('20-8-23'),
          ]),
        ],
      ),
    );
  }

  Widget _buildTableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildTableCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
