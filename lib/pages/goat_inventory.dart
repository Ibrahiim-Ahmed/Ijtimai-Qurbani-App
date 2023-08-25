import 'package:flutter/material.dart';

class GoatInventory extends StatelessWidget {
  const GoatInventory({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final int rowCount = 10;
    final int columnCount = 7;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              " Goat Inventory ",
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 68, 40, 30),
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 68, 40, 30),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columnCount,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemCount: rowCount * columnCount,
              itemBuilder: (BuildContext context, int index) {
                int row = index ~/ columnCount + 1;
                int column = index % columnCount + 1;
                int idNumber = row * columnCount - columnCount + column;

                Color seatColor = Colors.white;

                return GestureDetector(
                  onTap: () {
                    // Show the bottom sheet on tap
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        int? selectedQuantity = 1;

                        return StatefulBuilder(
                          builder: (context, setState) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Goat's Id no. $idNumber Details",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                      "Goat price : 35,000. \n Other Details \n Other Details \n Other Details"),

                                  SizedBox(height: 20),
                                  // DropdownButton<int>(
                                  //   value: selectedQuantity,
                                  //   onChanged: (newValue) {
                                  //     setState(() {
                                  //       selectedQuantity = newValue;
                                  //     });
                                  //   },
                                  //   items: List.generate(7, (index) {
                                  //     return DropdownMenuItem<int>(
                                  //       value: index + 1,
                                  //       child: Text('${index + 1}'),
                                  //     );
                                  //   }),
                                  // ),
                                  // SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title:
                                                Text("Booking Confirmation "),
                                            content: Text(
                                                "You've booked This Goat of Id no. $idNumber."),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("OK"),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Text("Book it"),
                                  ),
                                ],
                              ),
                            );
                          },
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
                        idNumber.toString(),
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
