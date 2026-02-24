import 'package:flutter/material.dart';
import '../models/reservation.dart';

class EditPage extends StatefulWidget {
  final Reservation reservation;
  final int index;

  const EditPage({super.key, required this.reservation, required this.index});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController nameC;
  late TextEditingController contactC;
  late TextEditingController dateC;
  late TextEditingController notesC;

  String? selectedService;
  int selectedPrice = 0;

  final Map<String, int> services = {
    "Hair Cut": 50000,
    "Hair Coloring": 150000,
    "Creambath": 80000,
    "Facial": 120000,
    "Body Spa": 200000,
    "Eyelash Extension": 250000,
  };

  @override
  void initState() {
    super.initState();

    nameC = TextEditingController(text: widget.reservation.name);
    contactC = TextEditingController(text: widget.reservation.contact);
    dateC = TextEditingController(text: widget.reservation.date);
    notesC = TextEditingController(text: widget.reservation.notes);

    selectedService = widget.reservation.service;
    selectedPrice = widget.reservation.price;
  }

  Future pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      dateC.text = "${picked.day}/${picked.month}/${picked.year}";
    }
  }

  void update() {
    Navigator.pop(
      context,
      Reservation(
        name: nameC.text,
        contact: contactC.text,
        service: selectedService ?? "",
        date: dateC.text,
        notes: notesC.text,
        price: selectedPrice,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Reservation")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(Icons.local_florist, size: 40, color: Color(0xFFE91E63)),

            const SizedBox(height: 20),

            TextField(
              controller: nameC,
              decoration: const InputDecoration(
                labelText: "Customer Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: contactC,
              decoration: const InputDecoration(
                labelText: "Contact Number",
                prefixIcon: Icon(Icons.phone),
              ),
            ),

            const SizedBox(height: 15),

            DropdownButtonFormField<String>(
              value: selectedService,
              items: services.keys.map((service) {
                return DropdownMenuItem(
                  value: service,
                  child: Text("$service - Rp ${services[service]}"),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selectedService = val;
                  selectedPrice = services[val]!;
                });
              },
              decoration: const InputDecoration(
                labelText: "Select Service",
                prefixIcon: Icon(Icons.spa),
              ),
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.payments, color: Colors.pink),
                  const SizedBox(width: 10),
                  Text(
                    "Price : Rp $selectedPrice",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: dateC,
              readOnly: true,
              onTap: pickDate,
              decoration: const InputDecoration(
                labelText: "Choose Date",
                prefixIcon: Icon(Icons.calendar_today),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: notesC,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Notes",
                prefixIcon: Icon(Icons.notes),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Update Reservation"),
              onPressed: update,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF06292),
                minimumSize: const Size(double.infinity, 55),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
