import 'package:flutter/material.dart';

class CowInventory extends StatelessWidget {
  const CowInventory({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // Define the number of rows and columns for the cinema seat grid
    final int rowCount = 10;
    final int columnCount = 7;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              " Cow Inventory ",
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 68, 40, 30),
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 68, 40, 30),
                  fontWeight: FontWeight.bold),
            ), // Replace with an appropriate title
            SizedBox(
              height: 50,
            ),
            // Create the cinema seat grid
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columnCount,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemCount: rowCount * columnCount,
              itemBuilder: (BuildContext context, int index) {
                // Calculate the row and column for the current index
                int row = index ~/ columnCount + 1;
                int column = index % columnCount + 1;
                int seatNumber = row * columnCount - columnCount + column;

                // Customize seat appearance based on your needs
                Color seatColor = Colors.white;

                return GestureDetector(
                  onTap: () {
                    // Show the bottom sheet on tap
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Seat $seatNumber Details",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                  "Here you can book the seat or show more details."),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(7),
                    margin: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: seatColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        seatNumber.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
