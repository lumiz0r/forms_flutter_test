
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class FastForm extends StatefulWidget {
  const FastForm({super.key});

  @override
  _FastFormState createState() => _FastFormState();
}

class _FastFormState extends State<FastForm> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fast Form'),
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
                  decoration: const InputDecoration(
                    labelText: 'Choice Chip',
                    border: OutlineInputBorder(),
                  ),
                  selectedColor: Colors.blue,
                  options: const <FormBuilderChipOption<String>>[
                    FormBuilderChipOption<String>(
                      value: 'Flutter',
                      child: Column(
                        children: [
                          Icon(Icons.flutter_dash_rounded),
                          SizedBox(width: 10),
                          Text('Flutter'),
                        ],
                      ),
                    ),
                    FormBuilderChipOption<String>(
                      value: 'Android',
                      child: Column(
                        children: [
                          Icon(Icons.android),
                          SizedBox(width: 10),
                          Text('Android'),
                        ],
                      ),
                    ),
                    FormBuilderChipOption<String>(
                      value: 'Chrome OS',
                      child: Column(
                        children: [
                          Icon(Icons.chrome_reader_mode),
                          SizedBox(width: 10),
                          Text('Chrome OS'),
                        ],
                      ),
                    ),
                  ],
                  spacing: 10,
                ),
                const SizedBox(height: 10),

                // Switch
                FormBuilderSwitch(
                  name: 'switch',
                  title: const Text('Switch'),
                  initialValue: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Date Picker
                FormBuilderDateTimePicker(
                  name: 'date_picker',
                  inputType: InputType.date,
                  format: DateFormat('yyyy-MM'),
                  decoration: const InputDecoration(
                    labelText: 'Date Picker',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Dropdown
                FormBuilderDropdown(
                  name: 'dropdown',
                  decoration: const InputDecoration(
                    labelText: 'Dropdown',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'option1', child: Text('Option 1')),
                    DropdownMenuItem(value: 'option2', child: Text('Option 2')),
                    DropdownMenuItem(value: 'option3', child: Text('Option 3')),
                  ],
                ),
                const SizedBox(height: 20),

                // Radio Button
                FormBuilderRadioGroup(
                  name: 'radio',
                  orientation: OptionsOrientation.vertical,
                  decoration: const InputDecoration(
                    labelText: 'Radio Button',
                    border: OutlineInputBorder(),
                  ),
                  options: const [
                    FormBuilderFieldOption(value: 'option1', child: Text('Option 1')),
                    FormBuilderFieldOption(value: 'option2', child: Text('Option 2')),
                    FormBuilderFieldOption(value: 'option3', child: Text('Option 3')),
                  ],
                ),
                const SizedBox(height: 10),
                FormBuilderSlider(
                        name: 'number',
                        min: 1,
                        max: 100,
                        initialValue: 1,
                        divisions: 24,
                        decoration: const InputDecoration(
                            labelText: 'Slider',),
                        valueTransformer: (value) => value?.round(),
                        displayValues: DisplayValues.all),
                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.saveAndValidate()) {
                      print(_formKey.currentState!.value);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
