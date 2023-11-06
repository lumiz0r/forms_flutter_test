import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class FinalForm extends StatefulWidget {
  @override
  _FinalFormState createState() => _FinalFormState();
}

class _FinalFormState extends State<FinalForm> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FormBuilder(
                key: _fbKey,
                child: Column(
                  children: [
                    Text(
                      'Form Example Section',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    FormBuilderTextField(
                      name: 'title',
                      decoration: InputDecoration(
                        labelText: 'Title',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FormBuilderDateTimePicker(
                      name: 'date_picker',
                      inputType: InputType.date,
                      format: DateFormat('EEEE, MMMM d, yyyy'),
                      decoration: InputDecoration(
                        labelText: 'Date Picker',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialDate: DateTime.now(),
                    ),
                    SizedBox(height: 20),
                    FormBuilderDateTimePicker(
                      name: 'date_range_picker',
                      firstDate: DateTime(1970),
                      lastDate: DateTime(2100),
                      format: DateFormat('d/MM/yyyy - d/MM/yyyy'),
                      decoration: InputDecoration(
                        labelText: 'Date Range Picker',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialEntryMode: DatePickerEntryMode.calendar,
                    ),
                    SizedBox(height: 20),
                    FormBuilderDateTimePicker(
                      name: 'time_picker',
                      inputType: InputType.time,
                      decoration: InputDecoration(
                        labelText: 'Time Picker',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialTime: TimeOfDay(hour: 8, minute: 0),
                    ),
                    SizedBox(height: 20),
                    FormBuilderFilterChip(
                      name: 'input_chips',
                      decoration: InputDecoration(
                        labelText: 'Input Chips',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      spacing: 10.0,
                      runSpacing: 5.0,
                      options: const [
                        FormBuilderChipOption(
                          value: 'HTML',
                          child: Text('HTML'),
                        ),
                        FormBuilderChipOption(
                          value: 'React',
                          child: Text('React'),
                        ),
                        FormBuilderChipOption(
                          value: 'Angular',
                          child: Text('Angular'),
                        ),
                        FormBuilderChipOption(
                          value: 'CSS',
                          child: Text('CSS'),
                        ),
                        FormBuilderChipOption(
                          value: 'JavaScript',
                          child: Text('JavaScript'),
                        ),
                        FormBuilderChipOption(
                          value: 'TypeScript',
                          child: Text('TypeScript'),
                        ),
                        FormBuilderChipOption(
                          value: 'Node.js',
                          child: Text('Node.js'),
                        ),
                        FormBuilderChipOption(
                          value: 'Express.js',
                          child: Text('Express.js'),
                        ),
                        FormBuilderChipOption(
                          value: 'MongoDB',
                          child: Text('MongoDB'),
                        ),
                        FormBuilderChipOption(
                          value: 'MySQL',
                          child: Text('MySQL'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_fbKey.currentState!.saveAndValidate()) {
                    print(_fbKey.currentState!.value);
                  } else {
                    print('validation failed');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
