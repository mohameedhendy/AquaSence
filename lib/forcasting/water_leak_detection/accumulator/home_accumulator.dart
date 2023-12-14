import 'package:final_water_managment/forcasting/water_leak_detection/accumulator/branched.dart';
import 'package:final_water_managment/forcasting/water_leak_detection/accumulator/looped.dart';
import 'package:flutter/material.dart';

class AccelerometerPage extends StatelessWidget {
  final List<String> textList = [
    'Accelerometer\n Branched',
    'Accelerometer\n Looped',
  ];

  final List<Widget> pagesList = [
    AccelerometerBranched(),
    AccelerometerLooped(),
  ];

  final List<IconData> iconsList = [
    Icons.call_split, // Running icon for Accelerometer
    Icons.loop, // Surround sound icon for Hydrophone
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accelerometer'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: pagesList.length,
          itemBuilder: (BuildContext context, int index) {
            return buildWaterCard(context, index);
          },
        ),
      ),
    );
  }

  Widget buildWaterCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => pagesList[index],
        ),
      ),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconsList[index],
              size: 48.0,
              color: Colors.blue,
            ),
            SizedBox(height: 8.0),
            Text(
              textList[index],
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
