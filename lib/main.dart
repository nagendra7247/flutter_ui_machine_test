import 'package:flutter/material.dart';
import 'package:flutter_ui_machine_test/second_screen.dart';
import 'package:flutter_ui_machine_test/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      home: const MorningScreen(),
    );
  }
}

class MorningScreen extends StatelessWidget {
  const MorningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF5E8D7),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.06,
            vertical: size.height * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.02),
              Text(
                'Good morning\nOzlem',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: size.width * 0.13,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'You can be loving – even \nwith yourself.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: size.width * 0.070,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xCCB35A38),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, size.height * 0.08),
                ),
                child: Text(
                  'Now asleep',
                  style: TextStyle(
                    fontSize: size.width * 0.060,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xCCB35A38),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, size.height * 0.08),
                ),
                child: Text(
                  'Awake now',
                  style: TextStyle(
                    fontSize: size.width * 0.060,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // The background container with text and icon
                  Container(
                    padding: EdgeInsets.all(size.width * 0.06),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFADFB2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.spa, color: Colors.brown, size: size.width * 0.10),
                        SizedBox(width: size.width * 0.07),
                        Expanded(
                          child: Text(
                            'Fresh air after a snack can help you find peace again.',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: size.width * 0.04,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 75,
                    right: -60,
                    child: Image.asset(
                      'assets/images/mother.png',
                      width: size.width * 0.7,
                      fit: BoxFit.contain,
                    ),
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
