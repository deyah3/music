import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100), // Added SizedBox for spacing
            Column(
              children: [
                const Text(
                  'Find Your',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: 'Favorite '),
                      TextSpan(
                        text: 'Music',
                        style: TextStyle(
                          color: Color.fromARGB(
                              255, 212, 72, 224), // Make "Music" pink
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Added SizedBox for spacing
            Container(
              padding: const EdgeInsets.all(7.0),
              child: Image.asset(
                'assets/img/two.jpg',
                width: 400,
              ),
            ),
            const SizedBox(height: 20), // Added SizedBox for spacing
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Set the border radius
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 231, 120, 213)),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
