
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class FastForm extends StatefulWidget {
  @override
  _FastFormState createState() => _FastFormState();
}

class _FastFormState extends State<FastForm> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fast Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                // Choice Chips
                FormBuilderChoiceChip(
                  name: 'choice_chip',
                  decoration: InputDecoration(
                    labelText: 'Choice Chip',
                    border: OutlineInputBorder(),
                  ),
                  selectedColor: Colors.blue,
                  options: <FormBuilderChipOption<String>>[
                    FormBuilderChipOption<String>(
                      value: 'Flutter',
                      child: Row(
                        children: [
                          Icon(Icons.flutter_dash_rounded),
                          SizedBox(width: 10),
                          Text('Flutter'),
                        ],
                      ),
                    ),
                    FormBuilderChipOption<String>(
                      value: 'Android',
                      child: Row(
                        children: [
                          Icon(Icons.android),
                          SizedBox(width: 10),
                          Text('Android'),
                        ],
                      ),
                    ),
                    FormBuilderChipOption<String>(
                      value: 'Chrome OS',
                      child: Row(
                        children: [
                          Icon(Icons.chrome_reader_mode),
                          SizedBox(width: 10),
                          Text('Chrome OS'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                // Switch
                FormBuilderSwitch(
                  name: 'switch',
                  title: Text('Switch'),
                  initialValue: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                // Date Picker
                FormBuilderDateTimePicker(
                  name: 'date_picker',
                  inputType: InputType.date,
                  format: DateFormat('yyyy-MM'),
                  decoration: InputDecoration(
                    labelText: 'Date Picker',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                // Dropdown
                FormBuilderDropdown(
                  name: 'dropdown',
                  decoration: InputDecoration(
                    labelText: 'Dropdown',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    DropdownMenuItem(value: 'option1', child: Text('Option 1')),
                    DropdownMenuItem(value: 'option2', child: Text('Option 2')),
                    DropdownMenuItem(value: 'option3', child: Text('Option 3')),
                  ],
                ),
                SizedBox(height: 20),

                // Radio Button
                FormBuilderRadioGroup(
                  name: 'radio',
                  orientation: OptionsOrientation.vertical,
                  decoration: InputDecoration(
                    labelText: 'Radio Button',
                    border: OutlineInputBorder(),
                  ),
                  options: [
                    FormBuilderFieldOption(value: 'option1', child: Text('Option 1')),
                    FormBuilderFieldOption(value: 'option2', child: Text('Option 2')),
                    FormBuilderFieldOption(value: 'option3', child: Text('Option 3')),
                  ],
                ),
                SizedBox(height: 10),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.saveAndValidate()) {
                      print(_formKey.currentState!.value);
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
