import 'package:flutter/material.dart';

class MasjidDashboard extends StatelessWidget {
  const MasjidDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Masjid Dashboard"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.brown,
                    fixedSize: Size(160, 50),
                    textStyle: TextStyle(fontSize: 16)),
                onPressed: () => {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "User Id",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              content:
                                  Text("User Name : user \nPasssword: 456"),
                            );
                          })
                    },
                child: Text("Generate User ID")),
            SizedBox(
              height: 100,
            ),
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to the Masjid",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Explore various features and information about the masjid."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDashboardItem(Icons.event, "Events", () {
                  // Implement action for Events
                }),
                _buildDashboardItem(Icons.notifications, "Notifications", () {
                  // Implement action for Notifications
                }),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement action for More Info button
              },
              child: Text("More Info"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardItem(IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 32),
              SizedBox(height: 10),
              Text(title, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
