import 'package:flutter/material.dart';
import 'reservation.dart';

class EditPage extends StatefulWidget {
  final Reservation reservation;
  final int index;

  EditPage({required this.reservation, required this.index});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController nameController;
  late TextEditingController serviceController;
  late TextEditingController dateController;

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController(text: widget.reservation.name);
    serviceController = TextEditingController(text: widget.reservation.service);
    dateController = TextEditingController(text: widget.reservation.date);
  }

  void updateData() {
    final updatedReservation = Reservation(
      name: nameController.text,
      service: serviceController.text,
      date: dateController.text,
    );

    Navigator.pop(context, updatedReservation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Reservation")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Customer Name"),
            ),
            SizedBox(height: 10),

            TextField(
              controller: serviceController,
              decoration: InputDecoration(labelText: "Service"),
            ),
            SizedBox(height: 10),

            TextField(
              controller: dateController,
              decoration: InputDecoration(labelText: "Date"),
            ),
            SizedBox(height: 10),

            ElevatedButton(onPressed: updateData, child: Text("Update")),
          ],
        ),
      ),
    );
  }
}
