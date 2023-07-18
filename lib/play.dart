import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.play_arrow),
          iconSize: 30,
          onPressed: () {
            // Add your onPressed functionality here
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.heart_broken),
            color: const Color.fromARGB(255, 68, 59, 65),
            iconSize: 30,
            onPressed: () {
              // Add your onPressed functionality here
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.toc,
            ),
            color: const Color.fromARGB(255, 68, 59, 65),
            iconSize: 30,
            onPressed: () {
              // Add your onPressed functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage('assets/img/beatles.webp'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Dont Let Me Down',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'The beatles',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 68, 59, 65),
                        width: 10.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 68, 59, 65),
                          Color.fromARGB(255, 68, 59, 65),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [1.0, 3.0],
                      ),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Dont let me down',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Im in love for the first time',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Dont you know its gonna last?',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Its a love that lasts forever',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Its a love that has no past',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 60.0, 40.0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 0.5, // Change the value as needed
                      minHeight: 10,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Color.fromARGB(255, 231, 120, 213),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    '3:25', // Replace with the actual minutes left
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shuffle,
                size: 25,
                color: Color.fromRGBO(158, 158, 158, 1),
              ),
              Icon(
                Icons.skip_previous,
                size: 40,
                color: Colors.grey,
              ),
              Icon(
                Icons.pause_circle_filled_outlined,
                size: 50,
                color: Color.fromARGB(255, 250, 247, 247),
              ),
              Icon(
                Icons.skip_next,
                size: 40,
                color: Colors.grey,
              ),
              Icon(
                Icons.loop,
                size: 25,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
