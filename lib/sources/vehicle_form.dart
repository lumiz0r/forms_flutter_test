import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class VehicleForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  VehicleForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Form Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                'Form Title',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Description',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              FormBuilderRadioGroup(
                name: 'radio_question',
                orientation: OptionsOrientation.vertical,
                options: const [
                  FormBuilderFieldOption(value: 'above 40km/h'),
                  FormBuilderFieldOption(value: 'below 40km/h'),
                  FormBuilderFieldOption(value: '0km/h'),
                ],
                decoration: const InputDecoration(labelText: 'Please select the option below.'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Remarks',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: FormBuilderTextField(
                  name: 'remarks',
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter your remarks',
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Please provide the high speed of the vehicle',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              FormBuilderDropdown(
                name: 'combo_question',
                decoration: InputDecoration(
                  labelText: 'Select Option',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                items: ['Option A', 'Option B', 'Option C']
                    .map((option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Please provide the speed of the vehicle past 1 hour?',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              FormBuilderCheckboxGroup(
                name: 'checkbox_question',
                orientation: OptionsOrientation.vertical,
                options: const [
                  FormBuilderFieldOption(value: '20km/h'),
                  FormBuilderFieldOption(value: '30km/h'),
                  FormBuilderFieldOption(value: '40km/h'),
                  FormBuilderFieldOption(value: '50km/h'),
                ],
                decoration: const InputDecoration(labelText: 'Please select one or more options below.'),
              ),
              const SizedBox(height: 20.0),
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
    );
  }
}
