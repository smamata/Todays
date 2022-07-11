import 'package:flutter/material.dart';
import 'package:todays/pages/dashboard.dart';

void main() {
  runApp(const Todays());
}

class Todays extends StatefulWidget {
  const Todays({Key? key}) : super(key: key);

  @override
  State<Todays> createState() => _TodaysState();
}

class _TodaysState extends State<Todays> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Dashboard.id,
    );
  }
}
