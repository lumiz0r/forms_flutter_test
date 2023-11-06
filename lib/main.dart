import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'sources/vehicle_form.dart';
import 'sources/stepper_form.dart';
import 'sources/fast_form.dart';
import 'sources/final_form.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter FormBuilder Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale('en', '')],
      home: _HomePage(),
    );
  }
}
class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form Builder'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Complete Form'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VehicleForm(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Stepper Form'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StepperForm(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Fast Form'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FastForm(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Final Form'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FinalForm(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}