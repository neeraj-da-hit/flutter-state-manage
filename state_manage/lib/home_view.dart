import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double r = 255;
  double g = 255;
  double b = 255;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, r.toInt(), g.toInt(), b.toInt()),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, r.toInt(), g.toInt(), b.toInt()),
        title: const Text('My State Management App'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                '$count',
                style: const TextStyle(fontSize: 52),
              ), // const for style
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: const Icon(Icons.delete, size: 32),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Icon(Icons.add, size: 32),
                  ),
                ],
              ),
              const SizedBox(height: 100), // space between count and sliders
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // red
                  Column(
                    children: [
                      Text(
                        'Red: ${r.toInt()}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      Slider(
                        value: r,
                        min: 0,
                        max: 255,
                        divisions: 255,
                        label: g.toInt().toString(),
                        onChanged: (value) {
                          setState(() {
                            r = value;
                          });
                        },
                      ),
                    ],
                  ),
                  // blue
                  Column(
                    children: [
                      Text(
                        'Blue: ${b.toInt()}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      Slider(
                        value: b,
                        min: 0,
                        max: 255,
                        divisions: 255,
                        label: g.toInt().toString(),
                        onChanged: (value) {
                          setState(() {
                            b = value;
                          });
                        },
                      ),
                    ],
                  ),
                  // green
                  Column(
                    children: [
                      Text(
                        'Green: ${g.toInt()}',
                        style: const TextStyle(fontSize: 24),
                      ),
                      Slider(
                        value: g,
                        min: 0,
                        max: 255,
                        divisions: 255,
                        label: g.toInt().toString(),
                        onChanged: (value) {
                          setState(() {
                            g = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
