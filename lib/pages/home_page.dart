import 'package:flutter/material.dart';
import '../models/reservation.dart';
import 'add_page.dart';
import 'edit_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Reservation> reservations = [];

  void addReservation(Reservation r) => setState(() => reservations.add(r));
  void deleteReservation(int i) => setState(() => reservations.removeAt(i));
  void updateReservation(int i, Reservation r) =>
      setState(() => reservations[i] = r);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFFE91E63),
        icon: const Icon(Icons.add),
        label: const Text("Book Now"),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddPage()),
          );
          if (result != null) addReservation(result);
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Column(
              children: const [
                Icon(Icons.local_florist, size: 50, color: Color(0xFFE91E63)),
                SizedBox(height: 8),
                Text(
                  "Beauti-Fy Salon",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 54, 162),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 194, 208),
                    Color.fromARGB(255, 242, 251, 204),
                    Color.fromARGB(255, 255, 194, 208),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.face_retouching_natural,
                    size: 45,
                    color: Colors.white,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Beauty Peeps 💖",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Let's make your glow-up appointment today!"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: reservations.isEmpty
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.spa, size: 70, color: Colors.pinkAccent),
                          SizedBox(height: 10),
                          Text("ⓘ No Appointment Yet."),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: reservations.length,
                      itemBuilder: (context, index) {
                        final data = reservations[index];

                        return Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink.withOpacity(0.15),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    color: Colors.pink,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    data.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.phone, size: 14),
                                            const SizedBox(width: 6),
                                            Text(data.contact),
                                          ],
                                        ),
                                        const SizedBox(height: 6),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.content_cut,
                                              size: 14,
                                            ),
                                            const SizedBox(width: 6),
                                            Expanded(
                                              child: Text(
                                                "${data.service} - Rp ${data.price}",
                                                style: const TextStyle(
                                                  color: Color(0xFFE91E63),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    height: 50,
                                    width: 1,
                                    color: Colors.pink.shade100,
                                  ),

                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_today,
                                              size: 14,
                                            ),
                                            const SizedBox(width: 6),
                                            Text(data.date),
                                          ],
                                        ),

                                        const SizedBox(height: 6),

                                        if (data.notes != null &&
                                            data.notes!.isNotEmpty)
                                          Row(
                                            children: [
                                              const Icon(Icons.notes, size: 14),
                                              const SizedBox(width: 6),
                                              Expanded(
                                                child: Text(data.notes!),
                                              ),
                                            ],
                                          ),

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                Icons.edit,
                                                size: 20,
                                                color: Color.fromARGB(
                                                  255,
                                                  18,
                                                  54,
                                                  162,
                                                ),
                                              ),
                                              onPressed: () async {
                                                final updated =
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (_) =>
                                                            EditPage(
                                                              reservation: data,
                                                              index: index,
                                                            ),
                                                      ),
                                                    );
                                                if (updated != null) {
                                                  updateReservation(
                                                    index,
                                                    updated,
                                                  );
                                                }
                                              },
                                            ),
                                            IconButton(
                                              icon: const Icon(
                                                Icons.delete,
                                                size: 20,
                                                color: Colors.red,
                                              ),
                                              onPressed: () =>
                                                  deleteReservation(index),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
