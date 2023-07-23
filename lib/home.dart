import 'package:flutter/material.dart';
import 'package:weather_forecast_app/homepageui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'Bangladesh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        leading: const Icon(
          Icons.location_on_outlined,
          color: Colors.white,
        ),
        title: DropdownButton<String>(
          value: dropdownValue,
          elevation: 0,
          underline: Container(
            height: 0,
          ),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
          items: const [
            DropdownMenuItem<String>(
              value: 'India',
              child: Text('India'),
            ),
            DropdownMenuItem<String>(
              value: 'Bangladesh',
              child: Text('Bangladesh'),
            ),
            DropdownMenuItem<String>(
              value: 'USA',
              child: Text('USA'),
            ),
          ],
          onChanged: (String? newvalue) {
            setState(
              () {
                dropdownValue = newvalue!;
              },
            );
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          )
        ],
      ),
      body:const HomeUI(),
    );
  }
}
