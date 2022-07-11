import 'package:flutter/material.dart';
import 'package:todays/pages/widgets/option.dart';

class Dashboard extends StatefulWidget {
  static const String id = "Dashboard_screen";
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todays"),
        backgroundColor: Color(0xff65c4fe),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Option(image: "images/weather.png", title: "Weather"),
                  Option(image: "images/quotes.jpeg", title: "Quotes")
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Option(image: "images/joke.png", title: "Jokes"),
                  Option(image: "images/quotes.jpeg", title: "Quotes")
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Option(image: "images/weather.png", title: "Weather"),
                  Option(image: "images/quotes.jpeg", title: "Quotes")
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Option(image: "images/weather.png", title: "Weather"),
                  Option(image: "images/quotes.jpeg", title: "Quotes")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
