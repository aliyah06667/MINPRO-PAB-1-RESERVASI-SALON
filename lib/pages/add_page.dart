import 'package:flutter/material.dart';
import '../models/reservation.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final nameC = TextEditingController();
  final contactC = TextEditingController();
  final dateC = TextEditingController();
  final notesC = TextEditingController();

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

  void save() {
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
      appBar: AppBar(title: const Text("New Reservation")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Column(
              children: [
                Icon(Icons.local_florist, size: 40, color: Color(0xFFE91E63)),
                SizedBox(height: 6),
                Text(
                  "Beauti-Fy Salon",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

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
              keyboardType: TextInputType.phone,
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
                  child: Text("$service  -  Rp ${services[service]}"),
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

            if (selectedPrice != 0)
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

            const SizedBox(height: 15),

            ElevatedButton.icon(
              icon: const Icon(Icons.check),
              label: const Text("Save Reservation"),
              onPressed: save,
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
