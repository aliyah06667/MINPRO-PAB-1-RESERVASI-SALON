import 'package:flutter/material.dart';
import 'reservation.dart';
import 'add_page.dart';
import 'edit_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Reservation> reservations = [];

  void addReservation(Reservation reservation) {
    setState(() {
      reservations.add(reservation);
    });
  }

  void deleteReservation(int index) {
    setState(() {
      reservations.removeAt(index);
    });
  }

  void updateReservation(int index, Reservation updated) {
    setState(() {
      reservations[index] = updated;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),

            Center(
              child: Text(
                "BEAUTIFY SALON",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 1, 25, 80),
                  letterSpacing: 2,
                ),
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 209, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Booking Now ♡",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 120, 4, 46),
                    ),
                  ),
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AddPage()),
                    );

                    if (result != null) {
                      addReservation(result);
                    }
                  },
                ),
              ),
            ),

            SizedBox(height: 25),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 185, 221, 255),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: reservations.isEmpty
                    ? Center(
                        child: Text(
                          "ⓘ No Appointment Yet.",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    : ListView.builder(
                        itemCount: reservations.length,
                        itemBuilder: (context, index) {
                          final data = reservations[index];

                          return Card(
                            elevation: 3,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              title: Text(
                                data.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("${data.service} • ${data.date}"),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.edit, color: Colors.blue),
                                    onPressed: () async {
                                      final updated = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => EditPage(
                                            reservation: data,
                                            index: index,
                                          ),
                                        ),
                                      );

                                      if (updated != null) {
                                        updateReservation(index, updated);
                                      }
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete, color: Colors.red),
                                    onPressed: () => deleteReservation(index),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
