import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Coba',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Coding Flutter')),
        body: const UbahWaktuWidget(),
      ),
    );
  }
}

class UbahWaktuWidget extends StatefulWidget {
  const UbahWaktuWidget({super.key});

  @override
  State<UbahWaktuWidget> createState() => _UbahWaktuWidgetState();
}

class _UbahWaktuWidgetState extends State<UbahWaktuWidget> {
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Jam Sekarang: $time'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              time = DateTime.now();
            });
          },
          child: const Text('Perbarui Waktu'),
        ),
      ],
    );
  }
}
