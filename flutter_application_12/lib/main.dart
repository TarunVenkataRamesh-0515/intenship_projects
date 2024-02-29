import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date of Birth Input'),
        ),
        body: Center(
          child: DateOfBirthForm(),
        ),
      ),
    );
  }
}

class DateOfBirthForm extends StatefulWidget {
  @override
  _DateOfBirthFormState createState() => _DateOfBirthFormState();
}

class _DateOfBirthFormState extends State<DateOfBirthForm> {
  DateTime selectedDate = DateTime.now();
  TextEditingController dayController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  Future<void> _selectDate(TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        controller.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => _selectDate(dayController),
            child: buildDateTextField("Day", dayController),
          ),
          SizedBox(height: 16.0),
          InkWell(
            onTap: () => _selectDate(monthController),
            child: buildDateTextField("Month", monthController),
          ),
          SizedBox(height: 16.0),
          InkWell(
            onTap: () => _selectDate(yearController),
            child: buildDateTextField("Year", yearController),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Access the selected date values
              String day = dayController.text.split('/')[0];
              String month = monthController.text.split('/')[1];
              String year = yearController.text.split('/')[2];

              // Do something with the date values
              print('Date of Birth: $day/$month/$year');
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  Widget buildDateTextField(String label, TextEditingController controller) {
    return Container(
      height: 40,
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: controller,
        enabled: false,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
