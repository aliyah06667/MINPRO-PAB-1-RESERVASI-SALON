import 'package:flutter/material.dart';
import 'reservation.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController serviceController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void saveData() {
    final reservation = Reservation(
      name: nameController.text,
      service: serviceController.text,
      date: dateController.text,
    );

    Navigator.pop(context, reservation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Your Reservation Here!")),
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

            ElevatedButton(onPressed: saveData, child: Text("Save")),
          ],
        ),
      ),
    );
  }
}
