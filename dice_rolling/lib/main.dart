import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 1;
  //Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Magical Dice'),
            centerTitle: true,
            backgroundColor: Colors.orange,
          ),
          body: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Text(
                    'A Very Warm Welcome!',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 231, 233, 235)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: x >= 5
                              ? Text(
                                  'Congratulations\n You got \n 🍻$x🍻',
                                  style: const TextStyle(fontSize: 30),
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  'Better Luck Next Time \n You got only \n 😒 $x 😒 ',
                                  style: const TextStyle(fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image(
                          image: AssetImage('assets/images/dice$x.png'),
                          height: 50,
                          width: 50,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    // AudioPlayer()
                    //     .play(AssetSource('assets/audio/Rolling_sound.mp3'));
                    x = Random().nextInt(6) + 1;
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color.fromARGB(255, 231, 233, 235),
                    backgroundColor: Colors.orange,
                    elevation: 10,
                  ),
                  child: const Text('Roll Me'),
                ),
                InkResponse(
                  radius: 0,
                  onTap: () {
                    x = 6;
                    setState(() {});
                  },
                  child: Container(height: 150),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
