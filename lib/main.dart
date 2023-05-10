import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallCounter());
}

class BasketBallCounter extends StatefulWidget {
  @override
  State<BasketBallCounter> createState() => _BasketBallCounterState();
}

class _BasketBallCounterState extends State<BasketBallCounter> {
  int pointsA = 0;

  int pointsB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$pointsA',
                        style: TextStyle(fontSize: 160),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            pointsA += 1;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            pointsA += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            pointsA += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$pointsB',
                        style: TextStyle(fontSize: 160),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            pointsB += 1;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            pointsB += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            pointsB += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  pointsA = 0;
                  pointsB = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
